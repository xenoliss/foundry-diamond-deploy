// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IERC165} from "../../interfaces/IERC165.sol";
import {IERC173} from "../../interfaces/IERC173.sol";

import {IDiamondCut} from "../core/DiamondCut/IDiamondCut.sol";
import {IDiamondLoupe} from "../core/DiamondLoupe/IDiamondLoupe.sol";

import {ERC165Lib} from "../implementations/ERC165/ERC165Lib.sol";
import {ERC173Lib} from "../implementations/ERC173/ERC173Lib.sol";

import {IDiamondInit} from "./IDiamondInit.sol";

contract DiamondInit is IDiamondInit {
    /// @inheritdoc IDiamondInit
    function init() external override {
        // Add IERC165 support.
        ERC165Lib.setSupportedInterface(type(IERC165).interfaceId, true);

        // Add IERC173 support.
        ERC165Lib.setSupportedInterface(type(IERC173).interfaceId, true);

        // Add IDiamondCut support.
        ERC165Lib.setSupportedInterface(type(IDiamondCut).interfaceId, true);

        // Add IDiamondLoupe support.
        ERC165Lib.setSupportedInterface(type(IDiamondLoupe).interfaceId, true);

        // Register the owner.
        ERC173Lib.s().owner = msg.sender;
    }
}
