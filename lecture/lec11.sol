// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
    string public familyName = "Cho";
    string public givenName = "Sungmin";
    uint256 public money = 100;

    constructor(string memory _givenName) public {
        givenName = _givenName;
    }

    function getFamilyName() view public returns(string memory) {
        return familyName;
    }

    function getGivenName() view public returns(string memory) {
        return givenName;
    }

    function getMoney() virtual view public returns(uint256) {
        return money;
    }
}

contract Son is Father{
    uint256 private earning = 0;

    constructor() Father("Chris") {

    }

    function work() public {
        earning += 100;
    }

    function getMoney() view override public returns(uint256) {
        return money + earning;
    }
}