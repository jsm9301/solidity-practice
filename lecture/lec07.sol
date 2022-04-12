// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec07 {
    /*
    storage: 대부분의 변수, 함수들이 저장되며 영속적으로 저장되어 가스 비용이 비쌈.
    memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장, 영속적으로 저장되지 않아 storage보다 가스 비용이 쌈
    Colldata: 주로 external function의 파라미터에서 사용
    stack: EVM(ethereum virtual machine)에서 stack data를 관리할 때 쓰는 영역(1024MB 제한)
    */

    // function - string
    function get_string(string memory _str) public pure returns(string memory) {
        return _str;
    }

    function get_uint(uint256 _ui) public pure returns(uint256) {
        return _ui;
    }
}