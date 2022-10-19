// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

struct FeatureOneStorage {
    uint256 v1;
}

library FeatureOneLib {
    bytes32 constant FEATURE_ONE_STORAGE_POSITION =
        keccak256("feature-one.storage");

    /// @notice Return the storage struct for reading and writing.
    /// @return storageStruct The FeatureOne storage struct.
    function s()
        internal
        pure
        returns (FeatureOneStorage storage storageStruct)
    {
        bytes32 position = FEATURE_ONE_STORAGE_POSITION;
        assembly {
            storageStruct.slot := position
        }
    }

    function doComplexeMath(uint256 a) internal {
        s().v1 = a + 1;
    }
}
