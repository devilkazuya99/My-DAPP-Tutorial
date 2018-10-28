# My-DAPP-Tutorial
Written code for Election DAPP Tutorial

### Requirement

Development framework for Ethereum
> npm install -g truffle

Local in-memory block chain
> [Ganache](https://truffleframework.com/ganache) 

Metamask extension for Google Chrome

### Development

 Checkout the code and run
 > npm install

Deploy smart contract
> truffle migrate

Redeploy changes of smart contract (try minimise in PROD $$$)
> truffle migrate --reset

Run test
> truffle test

Run web app
> npm run dev


### Highlight

#### Tutorial 4:
- creating smart contract with solidity
- deploying smart contract
- using truffle console to test the smart contract
- writing test in javascript and truffle.js
- smart contract interact with a html page using web3 api.

#### Tutorial 5:
- cast a vote
- gas basic

#### Tutorial 6:
- events in smart contract


### Dev notes

- whenever you restart Ganache and you need to redeploy your smart contract, first delete the json file in build/contracts/ folder.
- somehow MetaMask had problem listening to events. 