// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract HotelRoom {
    // Enums restrict a variable to have one of only a few predefined values. 
    // The values in this enumerated list are called enums.
    enum Statuses {
        Vacant, 
        Occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;
    // any address can pay
    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }
    // Modifier is a func to modify the behavior of other functions.
    modifier onlyWhileVacant {
        // Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint _amount) {
        // Check price
        require(msg.value >= 2 ether, "Not enough ether provided.");
        _;
    }

    function book() public onlyWhileVacant {
        currentStatus = Statuses.Occupied;

        // owner.transfer(msg.value);
        // (bool sent, bytes memory data) = owner.call{value: msg.value}("");
        // require(true);

        // emit Occupy(msg.sender, msg.value);
    }
}