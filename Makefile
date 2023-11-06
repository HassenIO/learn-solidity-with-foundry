# Usage: make new-challenge id={challenge-id}
new-challenge:
	@if [ -d "challenges/$(id)" ]; then \
		echo "Error: Challenge 'challenges/$(id)/' already exists. Please change the id..."; \
		exit 1; \
	else \
		cp -r template "challenges/$(id)"; \
	fi
.PHONY: new-challenge
