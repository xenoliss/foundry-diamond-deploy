// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import {ERC173Lib} from "./ERC173Lib.sol";

abstract contract ERC173 {
    modifier onlyOwner() {
        require(msg.sender == ERC173Lib.s().owner, "UNAUTHORIZED");

        _;
    }
}
