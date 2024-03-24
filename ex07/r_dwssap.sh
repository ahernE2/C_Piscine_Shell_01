#!/bin/sh
# Definir los valores de FT_LINE1 y FT_LINE2
FT_LINE1=7
FT_LINE2=15

# Procesar el archivo /etc/passwd
output=$(cat /etc/passwd | sed '/^#/d' | awk 'NR % 2 == 0' | rev | sort -r | awk -v FT_LINE1="$FT_LINE1" -v FT_LINE2="$FT_LINE2" 'NR >= FT_LINE1 && NR <= FT_LINE2' | tr '\n' ',' | sed 's/,$/./')

# Mostrar el resultado
echo "$output"
