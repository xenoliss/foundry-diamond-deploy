// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {ERC173} from "../../diamond/implementations/ERC173/ERC173.sol";

import {FeatureOneLib} from "./FeatureOneLib.sol";

contract FeatureOneFacet is ERC173 {
    function a(uint256 _a) external {
        FeatureOneLib.doComplexeMath(_a);
    }

    function b(uint256 _b) external onlyOwner {
        FeatureOneLib.doComplexeMath(_b);
    }
}
