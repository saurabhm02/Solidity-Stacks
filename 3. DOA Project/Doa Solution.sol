// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract DoaProject{
    struct Proposal{
        uint id;
        string description;
        uint amount;
        address payable receipient;
        uint votes;
        uint end;
        bool isExecuted;
    }

    mapping (address => bool) private isInvestor;
    mapping (address => uint) public numberOfShares;
    mapping (address => mapping (uint => bool)) public isVoted;
    // mapping (address => mapping (address => bool)) public withdrawlStatus;
    address[] public investorsList;

    mapping (uint => Proposal) public proposals;

    uint public totalShares;
    uint public availableFunds;
    uint public contributionTimeEnd;
    uint public nextProposalId;
    uint public voteTime;
    uint public quorum;
    address public manager;


    constructor( uint _contributionTimeEnd, uint _voteTime, uint _quorum ){
        require(_quorum > 0 && _quorum < 100, "not valid values");
        contributionTimeEnd = block.timestamp + _contributionTimeEnd;
        voteTime = _voteTime;
        quorum = _quorum;
        manager = msg.sender;
    }

    modifier onlyInvestor(){
        require(isInvestor[msg.sender] == true, "You are not an investor");
        _;
    }

    modifier onlyManager(){
        require(manager == msg.sender, "You are not a manager");
        _;
    }

    function contribution() public payable {
        require(contributionTimeEnd >= block.timestamp, "Conotribution time ended");
        require(msg.value > 0, "Send more than 0 ether");
        isInvestor[msg.sender] = true;
        numberOfShares[msg.sender] += msg.value;
        totalShares += msg.value;
        availableFunds += msg.value;
        investorsList.push(msg.sender);
    }

    function reedemShare(uint amount) public onlyInvestor(){
        require(numberOfShares[msg.sender] >= amount, "You don't have enough shares");
        require(availableFunds >= amount, "Not enough funds!");
        numberOfShares[msg.sender] -= amount;

        if(numberOfShares[msg.sender] == 0){
            isInvestor[msg.sender] = false;
        }
        availableFunds -= amount;
        payable (msg.sender).transfer(amount);
    }

    function transferShare(uint amount, address _to) public onlyInvestor(){
        require( numberOfShares[msg.sender] >= amount , "you don't have enough shares");
        require(availableFunds >= amount, "Not enough funds!");
        numberOfShares[msg.sender] -= amount;

        if(numberOfShares[msg.sender] == 0){
            isInvestor[msg.sender] = false;
        }
        numberOfShares[_to] += amount;
        isInvestor[_to] = true;
        investorsList.push(_to);
    } 

    function createProposal(string calldata description, uint amount, address payable receipient) public onlyManager(){
        require(availableFunds >= amount, "Not enough funds!");
        proposals[nextProposalId] = Proposal(nextProposalId, description, amount, receipient, 0, block.timestamp + voteTime, false);
        nextProposalId += 1;
    } 

    function voteProposal(uint proposalId) public onlyInvestor(){
        Proposal storage proposal = proposals[proposalId];
        require(isVoted[msg.sender][proposalId] == false, "You have already voted for this proposal!");
        require(proposal.end > block.timestamp, "Voting time Ended!");
        require(proposal.isExecuted == false, "It is already Executed");
        isVoted[msg.sender][proposalId] = true;
        proposal.votes += numberOfShares[msg.sender];
    }

    function executeProposal(uint proposalId) public onlyManager(){
        Proposal storage proposal = proposals[proposalId];
        require(((proposal.votes * 100) / totalShares ) >= quorum, "Majority does not support");
        proposal.isExecuted = true;
        availableFunds -= proposal.amount;
        _transfer(proposal.amount, proposal.receipient);

    }

    function _transfer(uint _amount, address payable  receipient) public {
        receipient.transfer(_amount);
    }

    function proposalList() public view returns(Proposal[] memory){
        Proposal[] memory arr = new Proposal[](nextProposalId - 1);
        for(uint i = 0; i< nextProposalId; i++){
            arr[i] =  proposals[i];
        }
        return arr;
    }

}
