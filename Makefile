.PHONY: commit

commit:
	@echo "Please enter your commit message:"; \
	read commit_msg; \
	if [ -z "$$commit_msg" ]; then \
		echo "Your message can't be empty."; \
	else \
		git add . && git commit -m "$$commit_msg" && git push; \
	fi