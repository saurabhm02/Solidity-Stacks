// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract twitter{
    struct Tweet{
        uint id;
        address author;
        string content;
        uint createdAt;
    }

    struct Message{
        uint id;
        address from;
        address to;
        string content;
        uint createdAt;
    }

    mapping (uint => Tweet) public tweets;
    mapping (address => uint[]) public tweetsOf;
    mapping (address => Message[]) public conversations;
    mapping (address => mapping (address => bool)) public operators;
    mapping (address => address[]) public following;

    uint nextId;
    uint nextMessageId;

    function _tweet(address _from, string memory _content) internal {
        require(_from != address(0), "Invalid sender address");
        tweets[nextId] = Tweet(nextId, _from, _content, block.timestamp);
        tweetsOf[_from].push(nextId);   
        nextId += 1;
    }

    function _sendMessage(address _from, address _to, string memory _content) internal {
        require(_from != address(0), "Invalid sender address");
        require(_to != address(0), "Invalid recipient address");

        conversations[_from].push(Message(nextMessageId, _from, _to, _content, block.timestamp));
        nextMessageId += 1;
    }

    function tweet(string memory _content) public{ // tweet by owner
        _tweet(msg.sender, _content);
    }

    function tweet(address _from, string memory _content) public{ // owner -> address access
        _tweet(_from, _content);
    }

    function sendMessage(address _to, string memory _content) public{ // owner
        _sendMessage(msg.sender, _to, _content);
    }

    function sendMessage(address _from , address _to, string memory _content) public{  // owner -> address access
        _sendMessage(_from, _to, _content);
    }

    function follow(address _followed) public{
        require(_followed != address(0), "Invalid user address");
        following[msg.sender].push(_followed);
    }

    function allow(address _operator) public {
        require(_operator != address(0), "Invalid operator address");
        operators[msg.sender][_operator] = true;
    }
    function disAllow(address _operator) public {
        require(_operator != address(0), "Invalid operator address");
        operators[msg.sender][_operator] = false;
    }

    function getLatestMessage(uint  count) public view  returns (Tweet[] memory) {
        require( count > 0 && count <= nextId  , "count is not proper");
        Tweet[] memory _tweets = new Tweet[](count); // array length - count

        uint j;
        for(uint i = nextId - count; i < nextId; i++){
            Tweet storage _structure = tweets[i];

            _tweets[j] = Tweet(_structure.id, _structure.author, _structure.content, _structure.createdAt);
            j += 1;
        }
        return _tweets;
    }

    function getLatestofUser(address _user,uint count) public view returns(Tweet[] memory) { //8
        Tweet[] memory _tweets= new Tweet[](count);//new memory array whoose length is count
        //tweetsOf[_user] is having all the id's of the user
        uint[] memory ids = tweetsOf[_user]; ///ids is an array
        require(count>0 && count<=ids.length,"Count is not defined");

        uint j;
        for (uint i= ids.length-count; i<ids.length; i++){//5-3 = 2 to 5
            Tweet storage _structure = tweets[ids[i]];//i=2 id[2]=15 tweets[15]

            _tweets[j]=Tweet(_structure.id, _structure.author, _structure.content, _structure.createdAt);
            j=j+1;
        }
        return _tweets;
    }

}
