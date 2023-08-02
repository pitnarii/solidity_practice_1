// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {

    // If there is no value input in variable, this will get initialized to 0!
    uint256 favoriteNumber;
    bool favoriteBool;
    
    struct People {
        uint favoriteNumber;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameTofavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;

    }

    // view, pure
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public { 
        people.push(People(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }
    // function retrieve(uint256 favoriteNumber) public pure {
    //     favoriteNumber + favoriteNumber;
    // }

}