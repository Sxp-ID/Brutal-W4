install:
	@git pull
	@clear
	apt-get install bash curl wget jq
	apt-get install python python-pip nano
	apt-get install clang ncurses-utils bc xh
	apt-get install pv ossp-uuid nodejs
	apt-get install openssl-tool nodejs-lts
	python -m pip install -r data/requirements.txt
	@npm -g i chalk chalk-animation
	@npm install .
	@gcc main.c -o main
	@clear
	@printf "\n\033[37m[\033[33m*\033[37m] Package & module berhasil diinstall \033[31m.."
	@printf "\n\033[37m[\033[31m!\033[37m] Run script dg ketik \033[1;30m'\033[0m\033[32m./main\033[1;30m' \033[0m\033[37matau \033[1;30m'\033[0m\033[32mmake run\033[1;30m'\n\n"

update:
	@git pull

run:
	@./main

reset:
	@rm main
