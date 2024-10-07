// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

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
