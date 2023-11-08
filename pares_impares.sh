#!/bin/bash

pares=()
impares=()

while IFS= read -r numero; 
do 
    if ((numero % 2 == 0));
then
    pares+=("$numero")
else
    impares+=("$numero")
fi
done < numeros.txt

echo "numeros pares:"
for par in "${pares[@]}"; 
do 
    echo "$par"
done
echo "numeros impares:"
for impar in "${impares[@]}"; do
    echo "$impar"
done