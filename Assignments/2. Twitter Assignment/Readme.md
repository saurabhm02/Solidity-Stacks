# Build a Twitter Smart Contract

## Overview
TweetContract is a Solidity smart contract designed to simulate basic social media functionalities. It allows users to post tweets, send messages, follow other users, and manage access permissions within the Ethereum blockchain.

## Functionalities

### 1. Tweeting
Users can post tweets using the `postTweet` function. This function stores the tweet's content, the author's address, and the timestamp of creation.

### 2. Messaging
The contract provides a function `sendMessage` that enables users to send messages to other users. It records the sender, recipient, message content, and creation timestamp.

### 3. Following Users
Users can follow other users by invoking the `followUser` function, which adds the address of the followed user to a list of followed users.

### 4. Access Control
TweetContract implements mechanisms to control access permissions:
- Users can authorize other users to post tweets or send messages on their behalf.
- Users can revoke these authorizations.

### 5. Retrieving Data
The contract provides functions to retrieve:
- The latest tweets posted by users, considering a specified count.
- The latest tweets of a specific user, considering a specified count.

## Usage

### Deployment
Deploy the `TweetContract.sol` Solidity smart contract to the Ethereum blockchain.

### Interaction
Interact with the deployed contract through Ethereum wallets, smart contract interfaces, or by writing scripts using Web3.js or ethers.js.

