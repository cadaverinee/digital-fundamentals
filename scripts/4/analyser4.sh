#!/bin/bash
namemax="f"
namemin="f"
emailmax="f"
emailmin="f"
agemin1=1000
agemax1=0
namemax1="f"
namemin1="f"
emailmax1="f"
emailmin1="f"
for file in $(ls $1)
do
    echo -e "$1$file:"
    agemin=1000
    agemax=0
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1 )
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $age -gt $agemax ]]
        then
            agemax=$age
            namemax=$name
            emailmax=$email
        fi
        if [[ $age -lt $agemin ]]
        then
            agemin=$age
            namemin=$name
            emailmin=$email
        fi
        if [[ $age -gt $agemax1 ]]
        then
            agemax1=$age
            namemax1=$name
            emailmax1=$email
        fi
        if [[ $age -lt $agemin1 ]]
        then
            agemin1=$age
            namemin1=$name
            emailmin1=$email
        fi
    done
    echo -e "Самый старый в файле"
    echo -e "Имя:$namemax"
    echo -e "Возраст:$agemax"
    echo -e "Почта:$emailmax"
    echo -e "Самый молодой в файле"
    echo -e "Имя:$namemin"
    echo -e "Возраст:$agemin"
    echo -e "Почта:$emailmin"
done
echo -e "Самый старый в директории"
    echo -e "Имя:$namemax1"
    echo -e "Возраст:$agemax1"
    echo -e "Почта:$emailmax1"
    echo -e "Самый молодой в директории"
    echo -e "Имя:$namemin1"
    echo -e "Возраст:$agemin1"
    echo -e "Почта:$emailmin1"

