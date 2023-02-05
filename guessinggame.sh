# guessinggame

function guessinggame {
	n=0
	nof=`ls | wc -l`
	echo "Guess the number of files in current directry"
	while [[ $n == 0 ]]
	do
		read guess
		if [[ $guess -lt $nof ]]
		then
			echo "Number you entered is too small...guess again"
		elif [[ $guess -gt $nof ]]
		then
			echo "Number you entered is too large...guess again"
		else
			echo "Congratulations.... you guess the right number"
			n=1
		fi
	done
}
guessinggame
