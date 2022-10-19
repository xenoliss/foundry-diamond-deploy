// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

struct FeatureTwoStorage {
    uint256 v2;
}

library FeatureTwoLib {
    bytes32 constant FEATURE_TWO_STORAGE_POSITION =
        keccak256("feature-two.storage");

    /// @notice Return the storage struct for reading and writing.
    /// @return storageStruct The FeatureTwo storage struct.
    function s()
        internal
        pure
        returns (FeatureTwoStorage storage storageStruct)
    {
        bytes32 position = FEATURE_TWO_STORAGE_POSITION;
        assembly {
            storageStruct.slot := position
        }
    }

    function doComplexeMath(uint256 b) internal {
        s().v2 = b + 1;
    }
}
