all: README.md

README.md:
	echo "# Guessing Game - Unix WorkBench Assignment\n" > README.md
	echo "* Make file creation time: $(shell date +%Y-%m-%d:%H:%M:%S)\n" >> README.md
	echo "* No of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)\n" >> README.md
