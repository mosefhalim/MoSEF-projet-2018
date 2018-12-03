#!/bin/bash
today=$(date)
echo "Welcome $USERNAME nous sommes le $today"
read -p "Quel repertoire desirez-vous afficher ?" repertoire 
cd $repertoire
ls
echo "Voici les fichiers modifiés il y a moins de 7 jours"
find -type f -mtime -7















