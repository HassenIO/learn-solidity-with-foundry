---

The contract should have the following structure:

```solidity
contract BetterCounter {
    mapping(address => int256) private _counts;

    function increment() public {
        // Code goes here
    }

    function getCount(address addr) public view returns (int256) {
        // Code goes here
    }
}

```
