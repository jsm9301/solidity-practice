// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec13 {
    // event keyword 사용 시 블록에 데이터를 기록할 수 있음
    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("Sungmin", 1000);
    }
}