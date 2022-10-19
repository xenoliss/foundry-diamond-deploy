// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/******************************************************************************\
* Author: Nick Mudge <nick@perfectabstractions.com> (https://twitter.com/mudgen)
* EIP-2535 Diamonds: https://eips.ethereum.org/EIPS/eip-2535
/******************************************************************************/

import {ERC173} from "../../implementations/ERC173/ERC173.sol";

import {IDiamondCut} from "../DiamondCut/IDiamondCut.sol";
import {DiamondCutLib, FacetCut} from "./DiamondCutLib.sol";

// Remember to add the loupe functions from DiamondLoupeFacet to the diamond.
// The loupe functions are required by the EIP2535 Diamonds standard

contract DiamondCutFacet is IDiamondCut, ERC173 {
    /// @notice Add/replace/remove any number of functions and optionally execute
    ///         a function with delegatecall
    /// @param _diamondCut Contains the facet addresses and function selectors
    /// @param init The address of the contract or facet to execute "data"
    /// @param data A function call, including function selector and arguments
    ///             calldata is executed with delegatecall on "init"
    function diamondCut(
        FacetCut[] calldata _diamondCut,
        address init,
        bytes calldata data
    ) external override onlyOwner {
        DiamondCutLib.diamondCut(_diamondCut, init, data);
    }
}
