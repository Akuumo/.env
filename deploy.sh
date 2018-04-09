#!/bin/bash

files=("bashrc" ".ssh" ".vim") 

for file in "${files[@]}"
do
	if [ -e $file ]
	then
		printf "%s déplacé dans backup\n" "$file"
		#mv $file ~/.env/backup/
	else
		printf "%s n'existe pas\n" "$file"
	fi
done

#ln -s ~/.env/files/bashrc ~/.bashrc 
#ln -s ~/.env/files/ssh ~/.ssh 
#ln -s ~/.env/files/vim ~/.vim 
