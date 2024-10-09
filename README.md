
# Project Title

This is my Solidity Contract for Metacrafters


## Contract Details

- Token Name: Jikunn's Token
- Token Abbreviation: JKT
- Total Supply: The total supply is initially set to 0 but can be increased through minting.

 Functionalities

Minting Tokens 
- The mint function allows tokens to be created and added to the balanced of the specified address

- When tokens are minted, the total supply increaes, and the balance of the specified address is updated.

- Parameters: _address, _value

Burning Tokens

- The burn function allows tokens to be destroyed (burned) from the balance of a specified address.

- The function checks if the address has enough tokens before burning.

- When tokens are burned, the total supply decreases, and the balance of the specified address is reduced.

- They have the same parameter as the mint function.

## Key Components

Public Variables
- tokenName
- tokenAbbrev
- totalSupply

Mappings
- balances

Functions

- mint(): Creates new tokens and adds it to address.
- burn(): Burns tokens from the address and decreases total supply. Also checks if balance is sufficient for burning.
## Requirements

- Solidity Version: 0.8.26
- License: MIT
