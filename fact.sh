#!/bin/bash

if [ -n "$a" ]
then
    f=1
    n=$a

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

    if [ -n "$1" ]
    then

        if [[ "$1" == "-S" ]]
        then
            if [[ $(file fact.txt) == "fact.txt: empty" ]]
            then
                cat /dev/null > fact.txt
                echo $f > fact.txt
            else 
                touch fact.txt
                echo $f > fact.txt
            fi

        elif [[ "$1" == "-F" ]]
        then 
            find 
        else
            echo Не верно указан второй параметр
        fi
    fi
else
    echo Укажите число!
fi
