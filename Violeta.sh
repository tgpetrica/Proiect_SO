

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

fisier_intrare="$1"
fisier_temporar=$(mktemp)

sort "$fisier_intrare" | uniq > "$fisier_temporar"
echo "Prenume sterse:"

awk '{ if (++count[$0] == 2) print $0
                                      }' "$fisier_intrare"
mv "$fisier_temporar" "$fisier_intrare"
echo "Prenumele duplicate au fost sterse cu succes din $fisier_intrare"
cat "$fisier_intrare"
