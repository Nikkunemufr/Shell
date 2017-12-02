#!/bin/bash
#################################
#	Created by Alexis MORTELIER	#
#		All Rights Reserved		#
#################################

for i in *.gif;do mv $i ${i%gif}old;done

for i in *.gif;do mv $i test/${i%gif}old;done

if  [ -z "$1" ];
then
    echo "il y a bien un parametre"
else
    cat fichier
fi

for ((i=0;i<=100;i++));
do
echo $i;
done

n=5
i=0
while [ $i -le 10 ];
do
echo " $n x $i = `expr $n \* $i`"
i=`expr $i + 1`;
done

n=10
for ((i=0;i<n;i++));
do
echo bonjour;
done
}

for i in `ls`;
do

if [ $i -ne "$1" ]; then
	echo "$1 n'existe pas"
elif [ $i -f "$1" ]; then
	echo "$1 est un fichier"
elif [ $i -d "$1" ]; then
	echo "$1 est un repertoire"
fi;
done
