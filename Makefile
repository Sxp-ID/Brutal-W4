install:
	@git pull
	@clear
	apt-get install bash curl wget jq
	apt-get install python python-pip nano clang
	python -m pip install -r data/requirements.txt
	@gcc main.c -o main
	@clear
	@printf "\n\033[37m[\033[33m*\033[37m] Module berhasil diinstall \033[31m.."
	@printf "\n\033[37m[\033[31m!\033[37m] Run sc dg ketik \033[1;30m'\033[0m\033[32mmake run\033[1;30m' \033[0m\033[37matau \033[1;30m'\033[0m\033[32m./main\033[1;30m'\n\n"

update:
	@git pull

run:
	@./main

reset:
	@rm main
