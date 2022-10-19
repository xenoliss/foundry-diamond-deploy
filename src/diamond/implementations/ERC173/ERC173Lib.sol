// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

struct ERC173Storage {
    address owner;
}

library ERC173Lib {
    bytes32 constant ERC173_STORAGE_POSITION = keccak256("erc173.storage");

    ////////////////////////////////////////////////////////////////////////////////////////////////////
    //                                        INTERNAL FUNCTIONS                                      //
    ////////////////////////////////////////////////////////////////////////////////////////////////////

    /// @notice Return the storage struct for reading and writing.
    /// @return storageStruct The ERC173 storage struct.
    function s() internal pure returns (ERC173Storage storage storageStruct) {
        bytes32 position = ERC173_STORAGE_POSITION;
        assembly {
            storageStruct.slot := position
        }
    }
}
