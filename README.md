# Dapp

## PurchaseTickets Contract

## Overview
The `PurchaseTickets` smart contract allows users to purchase tickets on the Ethereum blockchain. This contract is primarily designed to record ticket purchases and allow for simple ownership verification.

## Features
- **Ticket Purchase:** Users can mark themselves as having purchased a ticket.
- **Ownership Verification:** Users can check if they have purchased a ticket.

## Contract Details
- **Solidity Version:** ^0.8.1
- **Owner:** Deployer of the contract becomes the owner.

## Functions

### Public Functions
- **purchaseTicket():** Marks the caller as having purchased a ticket.
- **checkPurchase():** Returns a boolean indicating whether the caller has purchased a ticket or not.

### Modifiers
- **Onlyowner:** Ensures that certain functions can only be called by the owner of the contract.

## Setup and Deployment

### Prerequisites
- Node.js and npm: [Download and Install](https://nodejs.org/en/download/)
- Truffle Suite: Install via npm
  ```bash
  npm install -g truffle
  ```

### Compilation and Deployment
First, compile the contract using Truffle.
```bash
truffle compile
```
Deploy the contract using Truffle on your preferred network (e.g., Ethereum mainnet, Rinkeby testnet).
```bash
truffle migrate --network <network-name>
```

## Usage
Interact with the deployed `PurchaseTickets` contract through a script or a client application using Web3.js or Ethers.js libraries.

Example using Web3.js:
```javascript
const contract = new web3.eth.Contract(contractABI, contractAddress);

// Purchase a ticket
contract.methods.purchaseTicket().send({ from: userAddress });

// Check ticket purchase status
contract.methods.checkPurchase().call({ from: userAddress }, function(error, result){
  console.log('Purchase status:', result);
});
```

## Security Considerations
- **Access Control:** Ensure that only intended functionalities are exposed publicly.
- **Validation:** Always validate frontend inputs and use assertive programming in the smart contract.

## License
This project is licensed under the MIT License.

---
