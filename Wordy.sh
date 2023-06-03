#!/bin/bash

main()
{
    h=$(echo "$1" | sed s/?//g)
    #echo ${h[0]}
    text=""
    for i in $h ;do
        case "$i" in
            What)
            text="$text"
            ;;
            is)
            text="$text";;
            plus)
            text="$text+"
            ;;
            multiplied)
            text="$text*"
            ;;
            by)
            text="$text"
            ;;
            divided)
            text="$text/"
            ;;
            "?")
            text="$text"
            ;;
            minus)
            text="$text-"
            ;;
            *)
            text="$text$i"
        esac
        #echo "$i"
    done
    if opt=$($(($text))); then
        echo "$(($text))"
    else
        exit 1;
    fi

}

main "$@"
