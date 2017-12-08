# makefile 
all: README.md

README.md: guessinggamemekdes.sh
	 
	echo "# Mekdes's Guessing Game  "   "# Today's Date:$(date) "   "# The number of lines in the Guessing game is $( wc -l < guessinggamemekdes.sh) " > README.md 
	

clean:
rm README.md
