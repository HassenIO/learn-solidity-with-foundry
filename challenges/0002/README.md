# 0002: A better counter!

Speaking of the previous challenge, the problem is that anyone that will call the `increment` function will increment the same counter for everybody. So the value of the count is the total number of times the `increment` was called.

In this improved version of the counter, I want each caller to have a specific count. In other words, I don't want your call to the Smart Contract to increment my count value.

## Acceptance test

All associated tests located in the `$(PWD)/tests/` folder should pass.

In your terminal, `cd` into this folder, then run `forge test` and make all tests pass 💪

## Tags

- Level: Easy
- Topics: Basics, Address
