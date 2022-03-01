#!/bin/bash



#######################################################
# description : deploiemnt de conteneur docker
#
# auteur : Zied
# date : 01/03/2022
#############################################
if [ "$1" == "--create" ];then
nb_machine=1
[ "$2" != "" ] && nb_machine=$2

for i in $(seq 1 $nb_machine);do
docker run -tid --name $USER-alpine-$i alpine:latest
echo "$USER-alpine-$i deja cree"
done
echo "j'ai creer ${nb_machine}"
elif [ "$1" == "--drop" ];then

docker rm -f $(docker ps -a |grep alpine |awk '{print $1}')


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

