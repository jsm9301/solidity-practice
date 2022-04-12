// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father {
    uint256 public fatherMoney = 100;

    function getFatherName() pure public returns(string memory) {
        return "Chris";
    }

    function getMoney() virtual view public returns(uint256) {
        return fatherMoney;
    }
}

contract Mother {
    uint256 public motherMoney = 500;

    function getMotherName() pure public returns(string memory) {
        return "Moon";
    }

    function getMoney() virtual view public returns(uint256) {
        return motherMoney;
    }
}

contract Son is Father, Mother{

    function getMoney() view override(Father, Mother) public returns(uint256) {
        return fatherMoney + motherMoney;
    }
}