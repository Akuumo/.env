#!/bin/bash

files=("bashrc" "bash_history" "ssh" "vim") 
path_backup="$HOME/.env/backup"
path_files="$HOME/.env/files"
		
printf "\n"

for file in "${files[@]}"
do
	t_file="$HOME/.$file"

	if [ -e $t_filei ]
	then
		if [ ! -h $t_file ]
		then
			mv $t_file $path_backup/$file
	                if [ ! -e $t_file ] && [ -e $path_backup/$file ]; then printf "%s bien déplacé dans %s\n" "$t_file" "$path_backup/$file"; fi

			ln -s $path_files/$file $t_file 
			if [ -h $t_file ]; then printf "Lien symbolique %s -> %s créé\n\n" "$t_file" "$path_files/$file"; fi
		else
			printf "Lien symbolique %s -> %s existe déjà\n" "$t_file" "$path_files/$file"
			if [ -e $path_backup/$file ]; then printf "%s existe\n\n" "$path_backup/$file"; else "%s existe pas\n\n" "$path_backup/$file"; fi
		fi
	else
                printf "%s n'existe pas\n" "$t_file"
	fi
done

