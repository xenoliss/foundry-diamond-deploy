// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {ERC173} from "../../diamond/implementations/ERC173/ERC173.sol";

import {FeatureTwoLib} from "./FeatureTwoLib.sol";

contract FeatureTwoFacet is ERC173 {
    function c(uint256 _c) external {
        FeatureTwoLib.doComplexeMath(_c);
    }

    function d(uint256 _d) external onlyOwner {
        FeatureTwoLib.doComplexeMath(_d);
    }
}
