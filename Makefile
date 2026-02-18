ERL_EI_INCLUDE_DIR = $(shell erl -noshell -eval 'io:format("~s/erts-~s/include", [code:root_dir(), erlang:system_info(version)]), halt().')


.PHONY: commit compile run

commit:
	@echo "Please enter your commit message:"; \
	read commit_msg; \
	if [ -z "$$commit_msg" ]; then \
		echo "Your message can't be empty."; \
	else \
		git add . && git commit -m "$$commit_msg" && git push; \
	fi

compile_nif:
	g++ -O3 -fPIC -shared -I$(ERL_EI_INCLUDE_DIR) c_src/hedysarum_executor.cpp -o priv/hedysarum_executor.so


compile: compile_nif
	@mix deps.get && mix deps.compile;

run: compile
	iex -S mix
