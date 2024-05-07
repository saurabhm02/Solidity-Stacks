# Solidity Basics

## Smart Contracts

A smart contract is a self-executing contract with the terms of the agreement directly written into code. It automatically enforces the terms of the agreement and executes actions based on predefined conditions. Smart contracts run on decentralized blockchain networks, ensuring transparency, security, and immutability.

### Smart Contract Applications

- Decentralized Finance (DeFi)
- Tokenization of Assets
- Supply Chain Management
- Voting Systems
- Gaming and Gambling Platforms
- Decentralized Autonomous Organizations (DAOs)

## Solidity

Solidity is a high-level programming language used for writing smart contracts on blockchain platforms like Ethereum. It is statically typed and supports inheritance, libraries, and complex user-defined types. Solidity code is compiled into bytecode, which can be executed on the Ethereum Virtual Machine (EVM).

### Compilation Process

1. **Source Code**: Solidity source code (.sol files).
2. **Compiler**: Solidity compiler (solc).
3. **Bytecode**: Compilation produces bytecode, which is deployed to the blockchain.
4. **ABI (Application Binary Interface)**: Specifies how to interact with the deployed contract.

### Variables

#### State Variables

- Stored permanently on the blockchain.
- Part of the contract's state.

#### Local Variables

- Exist only within the scope of a function.
- Temporary and not stored on the blockchain.

#### [Functions](./4.%20Functions.sol)

Functions in Solidity are similar to functions in other programming languages. They can be either `view`, `pure`, `payable`, or default.

#### View vs. Pure Functions

- `view`: Functions that do not modify the state of the contract. They can read data from the blockchain but cannot modify it.
- `pure`: Functions that do not read or modify the state of the contract. They are used for calculations based only on input parameters.

#### [Conditional Logic](./6.%20Conditional%20logic.sol)

Solidity supports common conditional statements like `if`, `else if`, and `else`.

#### [Loops](./7.%20Loops.sol)

Solidity supports different types of loops, including `for`, `while`, and `do-while`.

#### [Require Statement](./8.%20Require%20Statement.sol)

Used for validations and conditions. Throws an exception and reverts changes if the condition fails.

#### [Modifier](./9.%20Modifier%20Statement.sol)

Modifiers are reusable code snippets used to modify functions or restrict access.

## Basic Data Types

#### [1. Integer Data Types](./2.%20Data%20types.sol)

- `int8`: Signed 8-bit Integer
  - Range: -128 to 127
- `uint8`: Unsigned 8-bit Integer
  - Range: 0 to 255
- `int16`: Signed 16-bit Integer
  - Range: -32768 to 32767
- `uint16`: Unsigned 16-bit Integer
  - Range: 0 to 65535
- `int256`: Signed 256-bit Integer
  - Range: -2^255 to 2^255 - 1
- `uint256`: Unsigned 256-bit Integer
  - Range: 0 to 2^256 - 1

By default, the value of both `int` and `uint` is initialized with 0. Overflow gets detected at compile time.

For `int`, values range from -2^(n-1) to 2^(n-1) - 1.
For `uint`, values range from 0 to 2^n - 1.

#### [2. Boolean Data Types](./2.%20Data%20types.sol)
- `bool`: Boolean
  - Represents true or false values.
  - Default value: `false`

#### [3. Address Data Types](./2.%20Data%20types.sol)
- `address`: Ethereum Address
  - Represents a 20-byte Ethereum address.
  - Default value: `address(0)`

#### [4. Bytes Data Types](./2.%20Data%20types.sol)

- `bytes1` to `bytes32`: Fixed-size Byte Arrays
  - Represents fixed-size sequences of bytes.
  - `bytes1` to `bytes32` represent byte arrays of sizes 1 to 32 respectively.
  - Default value: Filled with zeros.

- `bytes`: Dynamic Byte Array
  - Represents a dynamic sequence of bytes.
  - Default value: Empty byte array `bytes()`


