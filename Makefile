test:
	forge test --match-test "test(Fuzz)?_$(id)_*"
.PHONY: test
