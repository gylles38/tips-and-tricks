#bin/bash
# répertoire où se trouve les fichiers à modifier
search_dir=/var/www/html/fichesAppli
for entry in "$search_dir"/*
do
    # converti l'encodage des fichiers 
    iconv $entry -f 'ISO-8859-1' -t 'UTF-8' -o $entry
    # copie le fichier converti du pod sur le poste local
		echo kubectl cp sse-ad-deployment-85d49dcbf-8z55x:$entry ${entry##/*/}		
done
