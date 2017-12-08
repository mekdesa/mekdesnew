# Mekdes's Guessing Game

function readx() {
	read x
	if ! [[ "$x" =~ ^[0-9]+$ ]]; then
  		echo "Sorry integers only!"
		while [[! "$x" =~ ^[0-9]+$ ]]; do
			read x
		done
	fi	
}

echo "Welcome ! This is Mekdes's Guessing Game"

n=$(ls -l | wc -l)

echo "Please guess the number of files in this directory : "

readx

continue=2

while [[ continue -gt 1 ]]
do
	if [[ $x -lt $n ]]
	then
		echo "You have entered $x, your guess is low, please try again!"
		readx
	elif [[ $x -gt $n ]]
	then
		echo "You have entered $x, your guess is high, please try again!"
		readx
	else
		echo "Congratulation!, Your guess is correct"
		continue=0
	fi
done
