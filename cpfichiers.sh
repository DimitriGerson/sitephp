#!/bin/bash
# cpfichiers.sh
# copier les elements d'un dossier dans un autre
# pour mettre à jour le dossier de travail avec celui sur le serveur
#DEPART= "/home/dimgers/php/sitephp"
#DESTINATION="/var/www/html/sitephp"
DEPART= "/home/dimgers/API"
DESTINATION="/var/www/html"
echo "Copie des fichiers depuis ${DEPART} dans ${DESTINATION}"
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
echo "Done."
exit

