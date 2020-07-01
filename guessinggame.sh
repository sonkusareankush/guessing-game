echo "                 **Welcome to GUESSING GAME**"
echo "     What do you think ? how many files are in the current directory ?"
read guess
function file_count {
	local count=$(ls | wc -l)
	echo $count
}

no=$(file_count)

 while [[ $guess -ne $no ]]
 do
	if [[ $guess -gt $no ]]
	then
		echo "Your closer , please reduce some no."
	else
		echo "Your closer , please add some no."
	fi
	echo "please! try again: "
	read guess
 done

 echo "Bravo..! You made it..!"
 	
