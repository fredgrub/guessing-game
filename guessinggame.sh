echo "how many files do you think are in this directory?"
read guess

function count {
	local file_total=$(ls | wc -l)
	echo $file_total
}

right_guess=$(count)

while [[ $guess -ne $right_guess ]]
do
	if [[ $guess -gt $right_guess ]]
	then
		echo "Your guess was too high."
		echo "Try again:"
	else
		echo "Your guess was too low."
		echo "Try again:"
	fi
	read guess
done

echo "Congratulations! You're right."
