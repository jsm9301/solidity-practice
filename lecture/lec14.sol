// SPDX-licence-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec14 {
    // indexed: event의 키 값(여러 이벤트가 있을 때 키 값으로 특정 이벤트를 찾을 수 있음)
    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    uint256 num = 0;
    
    function PushEvent(string memory _str) public {
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);

        num++;
    }
}