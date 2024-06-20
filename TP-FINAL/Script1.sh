#!/bin/bash

echo
ppt=("piedra" "papel" "tijera")
ppt_computadora=${ppt[$(( RANDOM % 3 ))]}

echo "Bienvenido a Piedra, Papel o Tiejeras!"
echo

echo "elije una opcion para jugar: "
echo
select ppt_usuario in "piedra" "papel" "tijera"

do
  case $ppt_usuario in 
    piedra|papel|tijera)
     break
     ;;
    *)
    echo "dato invalido, elige: 1 = piedra, 2 = papel, 3 = tijera"
     ;;
  esac
done

echo
echo "Elejiste:" $ppt_usuario
echo "La computadora eligio: " $ppt_computadora
echo

if [ $ppt_usuario == $ppt_computadora ]; then
    echo " Empate"
elif [ $ppt_usuario == "piedra" ] && [ $ppt_computadora == "tijeras" ]; then
    echo " Ganaste :D"
elif [ $ppt_usuario == "papel" ] && [ $ppt_computadora == "piedra" ]; then
    echo " Ganaste ;D"
elif [ $ppt_usuario == "tijeras" ] && [ $ppt_computadora == "papel" ]; then
    echo " Ganaste!!"
else
    echo " Perdiste"
fi
