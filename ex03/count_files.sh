#!/bin/sh

# Contar archivos y directorios en el directorio actual y subdirectorios
total_files=$(find . -type f | wc -l)
total_directories=$(find . -type d | wc -l)

# Imprimir el total de archivos y directorios
echo "$(($total_files + $total_directories))"

