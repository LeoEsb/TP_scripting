#!/bin/bash

 max=1000                         # nombre maximum possible
 nombre=0                         # nombre proposé par le joueur
 nbtentative=0                    # nombre de tentatives effectuées
((random=$RANDOM/32,765))         # nombre aléatoire, entre 0 et 32765

 while [ $nombre -ne $random ]
 do
  echo -n "Devine le nombre ? " 
         read nombre
  if [ "$nombre" -lt $random ] 
 then
    echo "... c'est plus grand!"
  elif [ "$nombre" -gt $random ] 
 then
    echo "... c'est plus petit!"
  fi
  nbtentative=$(( $nbtentative + 1 ))