// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyTokenAbhi {

    // Public variables 
    string public token_Name = "Abhijith";
    string public token_Abbrv = "ABI";
    uint256 public total_Supply = 5500;

    // Mapping of addresses to balances
    mapping(address => uint256) public balance;

    // Mint function 
    function minting(address mintAdd, uint256 mintVal) public {
        total_Supply += mintVal;
        balance[mintAdd] += mintVal;
    }

    // Burn function 
    function burning(address burnAdd, uint256 burnVal) public {
        require(balance[burnAdd] >= burnVal, "Insufficient balance to burn");
        
        total_Supply -= burnVal;
        balance[burnAdd] -= burnVal;
    }
}