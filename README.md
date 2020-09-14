# Frontrunnable Contract

Simple Solidity smart contract to test frontruns on Ethereum.

## How to Test

### 1. Generate a keccak256 hash

Using [https://emn178.github.io/online-tools/keccak_256.html](https://emn178.github.io/online-tools/keccak_256.html) or similar.

### 2. Deploy the contract

Deploy the contract to a testnet or mainnet, and pass the hash output generated in step 1 as the first parameter in the contract constructor, along with an optional amount of Ether.

The amount has to be big enough to attract front runners (look at gas prices).

### 3. Attempt to retrieve the funds

Now we're ready to get front run. Call the smart contract's `take()` function, and pass the raw input you used to generate the hash as the parameter.

Send the transaction, and take a look at your smart contract on [EtherScan](https://etherscan.io).

Now you'll see multiple attempts to retrieve the funds and your contract should be drained of Ether, since your transaction has been front run by other peers.