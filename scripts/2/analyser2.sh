#!/bin/bash

for file in $(ls $1)
do
    echo -e "$1$file:"
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1 )
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $email =~ .spbstu.ru$ ]]
        then
             echo -e "Имя:$name"
             echo -e "Возраст:$age"
             echo -e "Почта:$email"
        fi
    done
done
