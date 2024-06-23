# Vas a viajar a Australia y para conseguirlo debes cumplir los siguientes requisitos:
#  - Tener un pasaporte con al menos 6 meses de vigencia
#  - Permanecer un tiempo no mayor a 90 días
#  - No tener antecedentes penales
# PD: Debes imprimir la información completa junto a la respuesta del programa
# Usando echo

pasaporte="no"
tiempo="no"
antecedentes="no"

# Simulación de preguntas para los requisitos
read -p "¿Tienes un pasaporte con al menos 6 meses de vigencia? (si/no): " pasaporte
read -p "¿Vas a permanecer un tiempo no mayor a 90 días? (si/no): " tiempo
read -p "¿Tienes antecedentes penales? (si/no): " antecedentes

echo "-----------------------------------"
echo "Resultados de la evaluación:"
echo "Pasaporte válido: $pasaporte"
echo "Tiempo de estancia: $tiempo"
echo "Antecedentes penales: $antecedentes"
echo "-----------------------------------"

# Evaluación de los requisitos
if [ "$pasaporte" = "si" ] && [ "$tiempo" = "si" ] && [ "$antecedentes" = "no" ]; then
    echo "¡Felicidades! Cumples con todos los requisitos para viajar a Australia."
else
    echo "Lo sentimos, no cumples con todos los requisitos para viajar a Australia."
fi

# Realizando una prueba de contribucion a otro repositorio
#