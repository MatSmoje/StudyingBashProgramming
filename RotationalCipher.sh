#!/bin/bash 

#https://exercism.org/tracks/bash/exercises/rotational-cipher

main()
{
    word="$1"
    key="$2"

    plain=({a..z})
    plainMay=({A..Z})
    encryptedText=""

    for (( i=0;i<${#word};i++ )); do
        letra=${word:$i:1}
        
        if [[ "$letra" =~ [[:alpha:]] ]]; then

            for (( j=0;j<${#plain[@]};j++ )); do
                if [[ "$letra" == ${plain[$j]} ]]; then
                    x=$((($j+$key)%26))
                    #echo "Normal: $letra - Cipher: ${plain[$x]}"
                    encryptedText="$encryptedText${plain[$x]}"
                elif [[ "$letra" == ${plainMay[$j]} ]]; then
                    x=$((($j+$key)%26))
                    encryptedText="$encryptedText${plainMay[$x]}"
                    #echo "Normal: $letra - Cipher: ${plainMay[$x]}"
                fi
            done 
         else
             encryptedText="$encryptedText$letra"
             #echo "Normal: $letra - Cipher: $letra"
         fi
    done
    echo "$encryptedText"



}

main "$@"
