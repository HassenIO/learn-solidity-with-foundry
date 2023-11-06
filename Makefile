DIRS := $(shell find ./challenges -mindepth 1 -maxdepth 1 -type d)

.PHONY: test-solutions $(DIRS)
test-solutions: $(DIRS)

$(DIRS):
	@echo "Running script in $@"
	@cd $@ && make test-solution

# Usage: make new-challenge id={challenge-id}
.PHONY: new-challenge
new-challenge:
	@if [ -d "challenges/$(id)" ]; then \
		echo "Error: Challenge 'challenges/$(id)/' already exists. Please change the id..."; \
		exit 1; \
	else \
		cp -r template "challenges/$(id)"; \
	fi
