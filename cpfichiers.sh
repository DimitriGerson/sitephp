#!/bin/bash
# cpfichiers.sh
# copier les elements d'un dossier dans un autre
# pour mettre à jour le dossier de travail avec celui sur le serveur
DEPART="/home/dimgers/php/sitephp"
DESTINATION="/var/www/html"
#DEPART= "/home/dimgers/API"
#DESTINATION="/var/www/html"
#######fonction confirm pour valider la copie ######

confirm()
{
	read -r -p "${1} [y/N] " response
echo "$response"
	case "$response" in
		[yY][eE][sS]|[yY])
			true
			;;
		*)
			false
			;;
	esac
}

if confirm "Copie des fichiers depuis ${DEPART} dans ${DESTINATION}"; then

	for fich in "$DEPART"/*
	do
		echo "$fich"
	done
	ls $DEPART
	sudo cp -r $DEPART $DESTINATION
	echo "#############################"
	echo "Copie réalisée !"
	echo "##############################"

	ls $DESTINATION
else
	echo "Aucun fichier copié."
fi
echo "Done."
exit

