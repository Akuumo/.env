#!/bin/bash

t_file="h"

if [ -e $t_file ]
then
	echo "Existe"
else
	echo "Existe pas"
fi
if [ -h $t_file ]
then
	echo "Est un lien symb"
else
	echo "N'est un lien symb"
fi
