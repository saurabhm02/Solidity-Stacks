# Blockchain

## Inventors of Blockchain
- W. Scott Stornetta
- Stuart Haber

### Understanding Blockchain
- Blockchain can be likened to Web3 
- traditional internet is considered as Web2

It fundamentally revolutionizes data storage, enabling secure and transparent transactions across a decentralized network without the need for a central authority or single entity.

### Why Blockchain?
Because it offers a wide range of benefits including decentralization, security, transparency, efficiency, and new opportunities for innovation and disruption across various industries.

### Evolution of the Web
- **Web 1**: Users could only read data on the internet.
- **Web 2**: Users could both consume and produce content, resembling social media platforms.
- **Web 3**: Similar to Web2, but with added ownership of personal data, enhanced security, and transparent data ownership.

### Why blockchain?
- It offers a wide range of benefits including decentralization, security, transparency, efficiency & new opportunities for innovation & disruption across various industries.


### What is blockchain?
Blockchain is a distributed immutable ledger which is completely transparent.

## What is Bitcoin?
Bitcoin is a decentralized digital currency, without a central bank or a single administrator, that can be sent from user to user on the peer-to-peer bitcoin network. It uses blockchain technology.

### Types of blockchain
- Public: Bitcoin, Ethereum, etc
- Private: Hyperledger, R3 Corda, etc

### Blockchain Architecture
- **Block No.**: Represents the sequence of blocks in the blockchain.
- **Data**: Contains all transactions within the block.
- **Prev Hash**: Hash value of the previous block.
- **Hash**: Generated using the SHA-256 algorithm.

### First block of blockchain called Genesis block
Blockchain formed same as Linked-list, but it uses proof not next.

## Inventor of Bitcoin
- Satoshi Nakamoto

## Inventor of Buterin
- Vitalik Buterin

## Bitcoin vs. Ethereum
- In Bitcoin, we store Bitcoin transactions in data block.
- In Ethereum, we store ether transactions as well as smart contract. We can deploy on blockchain.

### Why Bitcoin does not support apps?

- Bitcoin is written in Bitcoin script.
- Bitcoin script = Not Turing complete.
  - Example: We cannot write loops in Bitcoin script.

- Ethereum, on the other hand, uses Solidity.
- Solidity = Turing complete.
  - We can write any type of program.

### Ethereum supports loops (on the other hand) because...

- Ethereum has the concept of Gas.

### Ethereum Gas

- It refers to the fee required to execute operations or transactions on the Ethereum network.

- It takes a fee whenever any program runs.


## Mathematical Operations & their gas price

- Multiplication `*` : 5 gas
- Subtraction `-` : 3 gas
- Addition `+` : 3 gas
- Division `/` : 5 gas
- Equal to `=` : 3 gas

Example:

10 * 3 - 6 = ?
= 5 + 3 + 3 = 11 gas


## Cryptocurrency Concepts

- **Gas Price**: It is the amount that the sender wants to pay per unit of gas set by the sender.
- **Gas**: Gas in Ethereum is denoted in gwei, where 1 gwei = 10^-9 Eth.
- **Transaction**: The higher the gas price, the faster the transaction will be mined in Bitcoin.

### Notes on Mining and Transactions

- **Miners**: Miners include the transaction fee in the block they mine.
- **Winner**: The miner who finds the block first gets the transaction fee.

### Additional Notes

- The transaction with the higher gas price will be prioritized in the queue.
- The transaction fee is also known as the "miner's tip."

## Types of Node

### Full Node
- Fully capable of mining.
- Provides the power of transactions.
- Stores full blockchain data.
- Participates in block validation.
- Stores and starts block validation.
- Can provide full power of transactions.
### Light Node
- Can perform transaction verification.
- Stores only block headers.
- Depends on full nodes for the rest.
- Low storage device (requires gigabytes of data).
- Can perform transaction verification.
- Relies on full nodes for the rest.

### Archive Node
- Stores all blockchain data.
- Similar to a full node but stores all data.
- Require terabytes of diskspace to bcome Archive node.

---

By downloading the software on our desktop, we can make our system act as a node.
