// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/


//Joshua James Arcelao FEU - Insitute of Technology 202110565@fit.edu.ph
contract MyToken {

    // Public variables to store token details
    string public tokenName = "Jikunn's Token";     
    string public tokenAbbrev = "JKT";        
    uint256 public totalSupply = 0;          

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the specified address
    function mint(address _address, uint256 _Value) public {
        totalSupply += _Value;               // Increase total supply by the specified value
        balances[_address] += _Value;        // Increase balance of the specified address
    }

    // Burn function
    function burn(address _Address, uint256 _Value) public {
        require(balances[_Address] >= _Value, "Insufficient balance to burn");  // Ensure balance is sufficient to burn
        totalSupply -= _Value;               // Decrease total supply by the specified value
        balances[_Address] -= _Value;        // Decrease balance of the specified address
    }
}
