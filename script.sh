#!/bin/bash

#################################
#	Created by Alexis MORTELIER	#
#		All Right Reserved		#
#################################

for i in $@; do
  echo $i
done;

dir1=$1
dir2=$2

diff -r --brief $dir1 $dir2
