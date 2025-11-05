#!/bin/bash

for file in $(ls $1)
do
    echo -e "$1$file:"
    counter=0
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1 )
        echo -e "Имя:$name"
        age=$(echo $info | cut -d ":" -f2)
        echo -e "Возраст:$age"
        email=$(echo $info | cut -d ":" -f3)
        echo -e "Почта:$email"
    done
done
