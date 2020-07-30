all: README.md

README.md: guessinggame.sh
	echo "Guessing Game" > README.md
	echo "\n**Description**: Make a program called *guessinggame.sh*." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in the file guessinggame.sh are ** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
