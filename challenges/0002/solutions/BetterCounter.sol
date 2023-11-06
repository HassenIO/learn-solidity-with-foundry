// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract BetterCounter {
    mapping(address => int256) private _counts;

    function increment() public {
        _counts[msg.sender] += 1;
    }

    function getCount(address addr) public view returns (int256) {
        return _counts[addr];
    }
}
