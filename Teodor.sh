#!/bin/bash

_DIR=$(dirname "$0")

echo " << MENIU >> "
echo "1 Sterge prenumele care se repeta.            (Violeta)"
echo "2 Ordoneaza descrescator dupa numar litere.   (Diana)"
echo "3 Sortare dupa numar litere pare/impare       (Andreea)"
echo "4 Transforma minuscule in MAJUSCULE.          (Daria)"
read -p "Introdu numarul comenzii: " comanda

case $comanda in
    1)
        echo "1: Sterge prenumele care se repeta."
        bash "$_DIR/Violeta.sh"
        ;;
    2)
        echo "2: Ordoneaza crescator dupa numar litere."
        bash "$_DIR/Diana.sh"
        ;;
    3)
        echo "3: Sortare dupa numar litere pare/impare"
        bash "$_DIR/Andreea.sh"
        ;;
    4)
        echo "4: Transforma minuscule in MAJUSCULE."
        bash "$_DIR/Daria.sh"
        ;;
    *)
        echo "Comanda invalida."
        ;;
esac
