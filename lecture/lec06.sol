// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec06 {
    uint256 public a = 1;

    function read_a() public view returns(uint256) {
        return a + 2;
    }

    function read_a2() public pure returns(uint256) {
        uint256 b = 1;
        
        return b + 2;
    }

    function read_a3() public returns(uint256) {
        a = 13;
        return a;
    }
}