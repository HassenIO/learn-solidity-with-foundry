test:
	forge test --match-test "test(Fuzz)?_$(id)_*"
.PHONY: test

hint:
	@cat "src/$(id)/HINT.md"
.PHONY: hint
