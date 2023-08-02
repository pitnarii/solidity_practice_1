// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Counter {
    //Code goes here....
    uint public count = 0; //1,2,3

    function incrementCount() public {
        // count = count + 1;
        count++;
    }

}