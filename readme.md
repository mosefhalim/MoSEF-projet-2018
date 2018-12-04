# Documentation du scrip "fiche_semaine_derniere.sh"

## Description  du script

Le script permet à l'utilisateur d'afficher un repertoire souhaité et les fichiers modifiés il y a moins de 7 jours au sein de celui-ci.

## Comment exécuter le script ?

Afin d'exécuter le script il faut
1. Ce placer dans le repertoire du script (MoSEF-projet-2018 par defaut)
2. Exécuter la commande *bash fiche_semaine_derniere.sh*
3. Taper le chemin absolu du repertoire que l'on souhaite afficher

## Exemples

Pour afficher les musiques que vous avez téléchargé ou modifié sur votre ordinateur il suffit de:
1. Taper bash *fiche_semaine_derniere.sh* dans le repertoire où est présent le script
2. Taper le chemin absolu : */home/user/Musique(si le repertoire s'appelle Musique)*

Pour afficher les images que vous avez modifié ou téléchargé les 7 derniers jours il suffit de:
1. Même étape
2. Taper le chemin absolu */home/user/Image(si le repertoire s'appelle Image)*


## Le code en detail

Message de bienvenue 
'''
#!/bin/bash
today=$(date)
echo"Welcome $USERNAME nous sommes le $today"
'''

Demande du repertoire desiré
'''
read -p "Quel repertoire desirez-vous afficher?" repertoire
cd $repertoire
'''

Affichage des fichiers modifiés il y a moins de 7 jours
'''
echo"Voici les fichiers modifiés il y a moins d'une semaine"
find -type f -mtime -7
'''

