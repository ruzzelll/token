# token Smart Contract

This Solidity smart contract, named MyToken, is designed to create a basic token with functionalities to mint and burn tokens. It includes public variables to store token details, a mapping to track token balances, and functions to mint and burn tokens.

## Functionality

The contract includes the following functionalities:

1. **Token Details:**
   - `name`: Stores the name of the token.
   - `symbol`: Stores the abbreviation of the token.
   - `totalSupply`: Stores the total supply of the token.

2. **Token Balances:**
   - `balances`: Maps addresses to their respective token balances.

3. **Mint Function (`mint`):**
   - Takes two parameters: `_recipient` (address) and `_value` (uint256).
   - Increases the total supply by `_value`.
   - Increases the balance of the `_recipient` address by `_value`.

4. **Burn Function (`burn`):**
   - Takes two parameters: `_owner` (address) and `_value` (uint256).
   - Requires that the balance of `_owner` is greater than or equal to `_value`.
   - Decreases the total supply by `_value`.
   - Decreases the balance of the `_owner` address by `_value`.

## Getting Started

To deploy and interact with the smart contract, follow these steps:

1. Clone this repository to your local machine.
2. Install the necessary dependencies.
3. Compile the smart contract using a Solidity compiler.
4. Deploy the compiled contract to a compatible blockchain network.
5. Interact with the deployed contract using a blockchain interface like Remix or a custom frontend application.

