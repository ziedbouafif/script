#!/bin/bash



#######################################################
# description : deploiemnt de conteneur docker
#
# auteur : Zied
# date : 01/03/2022
#############################################
if [ "$1" == "--create" ];then

echo "notre option est create"
else

echo "

Options : 
	- --create: lancer des conteneures
	- --drop : supprimer les conteneurs creer par le script 
	- --infos : carateriqtiques des conteneur (ip , nom , user)
	- --start : demarrage des conte
	- --ansible :  deploy 
"
fi

