contract Calculator {
    uint256 public result;

    function add(uint num) public{
        result += num;
    }

    function subtract(uint num) public{
        result -= num;
    }
    function multiply(uint num) public {
        result *= num;
    }

    function getResult() public view returns (uint){
        return result;
    }
}

