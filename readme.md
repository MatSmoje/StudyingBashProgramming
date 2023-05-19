# Learning BASH 

I am currently doing some exercises from the webpage: https://exercism.org/

## Useful 
- \$RANDOM: Return random number. If you want to get random between a range, you can do $(($RANDOM%26)), where 26 is the upper range + 1.
- find:
    - -name 
    - -iname 
    - -size +500G k M
    - -perm 777 -700 /700
    - -use 
    - -group
    - -type f d l
    - -exec 

- bash debugging: 
    - #!/bin/bash -xv
- get PID number of current process
    - $$

### Operation:
#### Arithmetic Operation:
- $((1+1))  
- $((x=1, y=1, d=x+y))

## Excercises
### Darts.sh  
I believe this excercise was not too easy. I had to solve how to validate my input arguments generating a regex patron. 
 - Concepts
    - Conditional
    - Regex
    - Functions
    - bc *(basic calculator)*: provides the functionality of scientific calculator
    - errors 

### DungAndDragsCharacter.sh
 - Concepts 
    - Conditional  
    - Functions
    - tr, sort, cut, |
    - random
    - bucle for

### Matchingbrackets.sh
I think it was a rather hard excercise due the algorithm, however, after some iteration, I was able to solve this problem :)!  
- Concepts
    - fuctions
    - for
    - conditionals
    - regex

### Proverb.sh
It was easy
- Concepts
    - for  
    - if  
    - args

### Luhn.sh
The webpage said it was medium level. I don't think that. Actually, I think it was easier than other tagged as easy.
- Concepts
    - functions
    - tr
    - if
    - for 
    - regex 

### Resistor_color_trio.sh
It's not hard! 
- Concepts
    - Case
    - if
    - for
    - arithmetic operations

### Sieve
Well, it took more time than I expected. Firstly I read bad the instructions and I think it was quite hard.
- Concepts
    - Functions
    - nested for
    - arrays
    - if

### Leap
Really easy
- Concepts
    - if else
    - errors (exit 1)

### Atbash Cipher
I liked that excercise!
- Concepts
    - functions
    - regex
    - if
    - tr
    - array
    - clases ([:upper:]...)
    - for
    
