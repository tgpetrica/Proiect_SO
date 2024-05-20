#!/bin/bash

if [ $# -ne 1 ]
  then
      echo "Utilizare: $0 Grupa_1008"
      exit 1
fi

Grupa_1008="$1"

if [ ! -f "$1" ]
  then
     echo "Fisierul nu exista"
     exit 1
fi

tr '[:lower:]' '[:upper:]' < "$1" > "$1.tmp" && mv "$1.tmp" "$1"
echo "Transformarea prenumelor in litere mari a fost realizata cu succes"
echo "Prenumele transformate:"
cat "$Grupa_1008"
