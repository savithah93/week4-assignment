all: README.md

README.md:
	echo "The Unix Workbench-Week4-Assignment-Guessing game\n" > README.md
	echo -n "README.md created on: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines present in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
