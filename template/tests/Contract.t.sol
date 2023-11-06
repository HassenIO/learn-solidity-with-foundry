// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Contract} from "../src/Contract.sol";

contract ContractTest is Test {
    Contract public kontract;

    function setUp() public {
        kontract = new Contract();
    }
}
