// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {IERC165} from "../../../interfaces/IERC165.sol";

import {ERC165Lib} from "./ERC165Lib.sol";

contract ERC165Facet is IERC165 {
    /// @inheritdoc IERC165
    function supportsInterface(bytes4 interfaceId)
        external
        view
        returns (bool)
    {
        return ERC165Lib.s().supportedInterfaces[interfaceId];
    }
}
