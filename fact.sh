#!/bin/bash

if [ -n "$1" ]
then
    f=1
    n=$1

    if (( n<0 ))
    then
        echo Факториал отрицательного числа не определен!
    
    else 
        for (( i=1; i <= $n; ++i ))
        do
            f=$[ $f*$i ]
        done
        echo $f
    fi

    if [ -n "$2" ]
    then

        if [[ "$2" == "-S" ]]
        then
            if [[ $(file fact.txt) == "fact.txt: empty" ]]
            then
                cat /dev/null > fact.txt
                echo $f > fact.txt
            else 
                touch fact.txt
                echo $f > fact.txt
            fi

        elif [[ "$2" == "-F" ]]
        then 
            find 
        else
            echo Не верно указан второй параметр
        fi
    fi
else
    echo Укажите число!
fi
