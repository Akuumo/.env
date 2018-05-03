#!/bin/bash

files=("bashrc" "bash_history" "ssh" "vim")
path_backup="$HOME/.env/backup"
path_files="$HOME/.env/files"

for file in `ls $path_backup`
do
	printf "%s\n" "$file"
     	t_file="$HOME/.$file"

        if [ -h $t_file ]
        then
        	rm $t_file
                if [ ! -e $t_file ]; then printf "Lien symbolique %s bien supprimé\n" "$t_file"; fi
		mv $path_backup/$file $t_file 
		if [ -e $t_file ] && [ ! -e $path_backup/$file ]; then printf "%s bien déplacé dans %s\n" "$t_file" "$path_backup/$file"; fi
	else
                printf "Lien symbolique %s -> %s existe déjà\n" "$t_file" "$path_files/$file"
                if [ -e $path_backup/$file ]; then printf "%s existe\n\n" "$path_backup/$file"; else "%s existe pas\n\n" "$path_backup/$file"; fi
        fi
done
