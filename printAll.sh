#!/bin/bash

files=("bashrc" "bash_history" "ssh" "vim")
path_backup="$HOME/.env/backup"
path_files="$HOME/.env/files"

function exist
{
        if [ -e $1 ]
        then
                printf "%s :\n" "$1"
        	cat $1
                printf "\n"
	else
                printf "%s n'existe pas\n\n" "$1"
        fi

}

for file in "${files[@]}"
do
 	t_file="$HOME/.$file"
	exist $t_file
done

for file in "${files[@]}"
do
        t_file="$path_backup/.$file"
	exist $t_file
done

for file in "${files[@]}"
do
        t_file="$path_files/$file"
	exist $t_file
done
