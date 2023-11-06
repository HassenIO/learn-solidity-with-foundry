// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {BetterCounter} from "../src/BetterCounter.sol";

contract BetterCounterTest is Test {
    BetterCounter counter;

    function setUp() public {
        counter = new BetterCounter();
    }

    function test_Increment() public {
        // Given
        // Simulate different addresses
        address addr1 = address(1);
        address addr2 = address(2);

        // When
        // Increment count for addr1 twice
        vm.prank(addr1); // Pretend we are addr1
        counter.increment(); // Increment count for addr1
        vm.prank(addr1);
        counter.increment();

        // Increment count for addr2 once
        vm.prank(addr2); // Pretend we are addr2
        counter.increment(); // Increment count for addr2

        // Then
        // Check counts for both addresses
        assertEq(counter.getCount(addr1), 2, "Count for addr1 should be 2");
        assertEq(counter.getCount(addr2), 1, "Count for addr2 should be 1");
    }
}
