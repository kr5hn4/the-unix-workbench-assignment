NO_OF_FILES=`ls -1 | wc -l`

function congratulate {
    echo "Congratulations! your guess was correct"
}

while true; do
    echo "Guess no. of files in the directory"
    read GUESS

    if ! [[ ${GUESS} =~ ^[0-9]+$ ]]
    then
        echo "Please input an integer"
        continue
    fi

    if [[ ${GUESS} -lt ${NO_OF_FILES} ]]
    then
        echo "Your guess was too low, please try again"
        continue
    elif [[ ${GUESS} -gt ${NO_OF_FILES} ]]
    then
        echo "Your guess was too high, please try again"
        continue
    fi
    
    congratulate
    break
done
