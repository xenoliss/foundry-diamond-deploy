// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

struct ERC165Storage {
    mapping(bytes4 => bool) supportedInterfaces;
}

library ERC165Lib {
    bytes32 constant ERC165_STORAGE_POSITION = keccak256("erc165.storage");

    /// @notice Return the storage struct for reading and writing.
    /// @return storageStruct The ERC165 storage struct.
    function s() internal pure returns (ERC165Storage storage storageStruct) {
        bytes32 position = ERC165_STORAGE_POSITION;
        assembly {
            storageStruct.slot := position
        }
    }

    /// @notice Set or unset a supported interface.
    /// @param interfaceId The interface id to set or unset.
    /// @param status Wheter to add or remove the interface support.
    function setSupportedInterface(bytes4 interfaceId, bool status) internal {
        require(interfaceId != 0xffffffff, "Invalid ID");
        s().supportedInterfaces[interfaceId] = status;
    }
}
