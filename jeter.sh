#!/bin/bash

#################################
#	Created by Alexis MORTELIER	#
#		All Right Reserved		#
#################################

rep=$(pwd)
echo $rep
cd ;
if [ $# -ge 3 ]
then
  if [ -d "$3" ]
    then
      echo "existe deja"
    else
      mkdir $3
  fi
fi


case $1 in
    -l)
      ls poubelle
    ;;
    -v)
      rm -rf poubelle/*
      echo "poubelle vider"
    ;;
    -r)
      mv $2 $3
      echo "fichier restaurer"
    ;;
    *)
      mv "$rep/"$1 $2
      echo "fichier supprimer"
    ;;
esac
