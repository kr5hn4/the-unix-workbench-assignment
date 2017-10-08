README.md:
	echo "# Guessinggame \n" > README.md
	echo "make file was run on $(shell date) \n" >> README.md
	echo "No of line of code in guessinggame.sh is" $(shell cat guessinggame.sh | wc -l) >> README.md

clean:
	rm README.md
