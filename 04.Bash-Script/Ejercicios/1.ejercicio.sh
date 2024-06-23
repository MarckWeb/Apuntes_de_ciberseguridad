#!/bin/bash

# Tarea-Bash
# Vas a aplicar a una oferta laboral. Para pasar la preselección debes cumplir con los siguientes requisitos:
#  -  Debes vivir en Bilbao
#  -  Debes ser mayor de 18 años
#  -  Debes tener experiencia previa de al menos 1 año
#  -  Disponibilidad para viajar
#  -  Inglés al menos B1
# PD: Debes imprimir la información completa junto a la respuesta del programa

echo "=========================================================="
echo -e "    Ingresa tus datos para verificar si eres el\n    candidato perfecto para la oferta laboral"
echo "=========================================================="

nombre=""
while [ -z "$nombre" ]; do
    read -p "Ingresa tu nombre: " nombre
    if [ -z "$nombre" ]; then
        echo "Por favor, ingresa un nombre válido."
    fi
done

echo "-------------------------------"
echo "Hola, $nombre. ¡Bienvenido!"
echo "-------------------------------"

edad=""
while ! [[ "$edad" =~ ^[0-9]+$ ]]; do
    read -p "Ingresa tu edad: " edad
    if ! [[ "$edad" =~ ^[0-9]+$ ]]; then
        echo "Por favor, ingresa una edad válida."
    fi
done

experiencia=""
while ! [[ "$experiencia" =~ ^[0-9]+$ ]]; do
    read -p "Cuantos años de experiencia tienes?: " experiencia
    if ! [[ "$experiencia" =~ ^[0-9]+$ ]]; then
        echo "Por favor, ingresa una cantidad válida de años de experiencia."
    fi
done

disponible=""
while [ -z "$disponible" ] || [[ ! "$disponible" =~ ^(si|no)$ ]]; do
    read -p "Estas disponible para viajar, si/no: " disponible
    if [ -z "$disponible" ] || [[ ! "$disponible" =~ ^(si|no)$ ]]; then
        echo "Por favor, ingresa si o no."
    fi
done
estado_disponible="${disponible^^}"

echo -e "     Nivel de Ingles    \n        1 = A1\n        2 = A2\n        3 = B1\n        4 = B2\n        5 = C1\n        6 = C3\n "
nivel_ingles=""
while ! [[ "$nivel_ingles" =~ ^[1-6]$ ]]; do
    read -p "¿Cuál es tu nivel en Inglés? : " nivel_ingles
    if ! [[ "$nivel_ingles" =~ ^[1-6]$ ]]; then
        echo "Por favor, ingresa un nivel válido (1-6)."
    fi
done

nivel_texto=""
case $nivel_ingles in
    1) nivel_texto="A1" ;;
    2) nivel_texto="A2" ;;
    3) nivel_texto="B1" ;;
    4) nivel_texto="B2" ;;
    5) nivel_texto="C1" ;;
    6) nivel_texto="C3" ;;
    *) nivel_texto="no reconocido" ;;
esac

echo "======================================="
echo "        DATOS DEL CANDIDATO"
echo "Nombre: $nombre"
echo "Edad: $edad"
echo "Experiencia: $experiencia"
echo "Puede viajar: $estado_disponible"
echo "Nivel inglés: $nivel_texto"
echo "========================================"

if [ "$estado_disponible" = "SI" ] && [ "$edad" -ge 18 ] && [ "$nivel_ingles" -ge 3 ]; then
   echo "En hora buena, cumples con los requisitos para el puesto. ¡Felicidades!"
else 
   echo "Lo sentimos mucho, según tus datos, no cumples para la oferta. Esperamos verte para otras entrevistas."
fi
