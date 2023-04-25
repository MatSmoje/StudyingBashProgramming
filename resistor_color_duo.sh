#!/bin/bash

main()
{
	case "$1" in 
		black)
			outputOne=""
			;;
		brown)
			outputOne="1"
			;;
		red)
			outputOne="2"
                        ;;
		orange)
			outputOne="3"
                        ;;
		yellow)
			outputOne="4"
                        ;;
		green)
			outputOne="5"
                        ;;
		blue)
			outputOne="6"
                        ;;
		violet)
			outputOne="7"
                        ;;
		grey)
			outputOne="8"
                        ;;
		white)
			outputOne="9"
                        ;;
		*)
			echo "invalid color"
			exit 1
			;;
	esac
	case "$2" in
                black)
                        outputTwo="0"
                        ;;
                brown)
                        outputTwo="1"
                        ;;
                red)
                        outputTwo="2"
                        ;;
                orange)
                        outputTwo="3"
                        ;;
                yellow)
                        outputTwo="4"
                        ;;
                green)
                        outputTwo="5"
                        ;;
                blue)
                        outputTwo="6"
                        ;;
                violet)
                        outputTwo="7"
                        ;;
                grey)
                        outputTwo="8"
                        ;;
                white)
                        outputTwo="9"
                        ;;
                *)
                        echo "invalid color"
                        exit 1
                        ;;
        esac
	echo "$outputOne$outputTwo"
}

main "$@"
