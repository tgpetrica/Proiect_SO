#!/bin/bash

prenume_par=0
prenume_impar=0

prenume_par_lista=()
prenume_impar_lista=()

if [ $# -ne 1 ] 
  then
      echo "Utilizare: $0 Grupa_1008"
      exit 1
fi

if [ ! -f "$1" ]
  then
      echo "Fisierul nu exista: $1"
      exit 1
fi

while IFS= read -r prenume 
     do
       prenume=$(echo "$prenume" | xargs)
     if [ -z "$prenume" ]
       then
          continue
     fi

       lungime=${#prenume}

     if [ $(( lungime % 2 )) -eq 0 ]
       then
           prenume_par=$((prenume_par + 1))
           prenume_par_lista+=("$prenume")
     else
           prenume_impar=$((prenume_impar + 1))
           prenume_impar_lista+=("$prenume")
     fi
done < "$1"

echo "Numar de prenume cu numar par de litere: $prenume_par"
echo "Prenume cu numar par de litere:"
printf '%s\n' "${prenume_par_lista[@]}"
echo
echo "Numar de prenume cu numar impar de litere: $prenume_impar"
echo "Prenume cu numar impar de litere:"
printf '%s\n' "${prenume_impar_lista[@]}"       
