#!/bin/bash 

#https://exercism.org/tracks/bash/exercises/rotational-cipher

main()
{
    word="$1"
    key="$2"

    plain=({a..z})
    # Generar Cipher segun Key
    # Obtener posicion de palabra en lista original
    # retornar misma posicion en lista cipher

    for (( i=0;i<${#word};i++ )); do
        letra=${word:$i:1}
        echo "$letra"
        for (( j=0;j<${#plain[@]};j++ )); do
            if [[ "$letra" == ${plain[$j]} ]]; then
                x=$(($j+$key))
                echo "J: $j - X: $x"
                echo "Normal: ${plain[$j]} - Cipher: ${plain[$x]}"
            fi
        done 
        
    done



}

main "$@"
