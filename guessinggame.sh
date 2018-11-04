function validate_files {
	if [[ $1 -gt $2 ]]
	then
		echo "The guess is too low. Try again"
	elif [[ $1 -lt $2 ]]
	then
		echo "The guess is too high. Try again"
	fi
}

end_loop=true
no_of_files=$(expr $(ls -l | wc -l) - 1)
while $end_loop;
do
	echo "Guess the number of files in this directory:"
	read response
	if [[ $no_of_files -ne $response ]]
	then
		validate_files $no_of_files $response
	else
		end_loop=false
	fi
done
echo "The guess is right"
