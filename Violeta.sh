

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
echo "Prenume duplicate  au fost sterse cu succes."

awk '{ if (++count[$0] == 2) print $0
                                      }' "$fisier_intrare"
mv "$fisier_temporar" "$fisier_intrare"
echo "Prenumele ce se regasesc in fisierul $fisier_intrare dupa executia scriptului sunt:"
cat "$fisier_intrare"
