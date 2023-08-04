// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) public {
        secret = _secret;
    }

    function getSecret() public view returns(string memory) {
        return secret;
    }
}

contract MyContract is Ownable {
    string secret;

    constructor(string memory _secret) public {
        secret = _secret;
        
    }

    function getSecret() public view returns(string memory) {
       return secret;
    }
}