#!/bin/bash

if [ $# -ne 1 ]
  then
     echo "Utilizare: $0 Grupa_1008"
     exit 1
fi

if [ ! -f "$1" ]
  then
     echo "Fisierul nu exista"
     exit 1
fi

prenume_sortate=$(awk '{print length($0), ($0)}' "$1" | sort -rn | cut -d ' ' -f 2- )

echo "Prenumele sortate descrescator in functie de lungime sunt:"
echo "$prenume_sortate"
