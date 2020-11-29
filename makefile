#/usr/bin/env bash

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "# Guessing Game" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "# The number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l ./guessinggame.sh >> README.md
