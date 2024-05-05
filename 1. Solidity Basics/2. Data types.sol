// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Integer {
    int256 public num = 10; // Signed integer (-2^255 to 2^255-1)
    int8 public num2;      // Signed integer (-128 to 127)
    int16 public num3;     // Signed integer (-32768 to 32767)

    uint256 public num4 = 129;  // Unsigned integer (0 to 2^256-1)
    uint8 public num5 = uint8(num4);  // Casting uint256 to uint8
}

contract BytesDataType {
    bytes1 public val1 = "a";    // Single-byte data type (1 byte)
    bytes2 public val2 = "ab";   // Two-byte data type (2 bytes)
    bytes3 public val3 = "abc";  // Three-byte data type (3 bytes)
    bytes32 public val32;        // Fixed-size byte array (32 bytes)
}

contract BoolDataType {
    bool public val = false;  // Boolean data type (true or false)
}

contract AddressDataType {
    address public val = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  // Ethereum address data type
}

