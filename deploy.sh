#!/bin/bash



#######################################################
# description : deploiemnt de conteneur docker
#
# auteur : Zied
# date : 01/03/2022
#############################################
if [ "$1" == "--create" ];then
echo ""
echo "notre option est create"
echo ""
nb_machine=1
[ "$2" != "" ] && nb_machine=$2
docker run -tid --name $USER-alpine alpine:latest

echo "j'ai creer ${nb_machine}"
elif [ "$1" == "--drop" ];then
echo ""
echo "notre option est drop"
echo ""

docker rm -f $USER-alpine


elif [ "$1" == "--start" ];then
echo ""
echo "notre option est start"
echo ""


elif [ "$1" == "--info" ];then
echo ""
echo "notre option est info"
echo ""


elif [ "$1" == "--ansible" ];then
echo ""
echo "notre option est ansible"
echo ""











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

