// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyContract {
    // Arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple", "banana", "carrot"];
    string[] public values;
    uint256[][] public array20 = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public {
        values.push(_value);
    }
    function valueCount() public view returns(uint) {
        return values.length;
    }
}