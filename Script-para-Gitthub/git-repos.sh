#!/bin/bash

# Lectura del username de GitHub
read -p $'\e[32mIngresa el username de GitHub:\e[0m ' USERNAME

# Obtención de la lista completa de repositorios del usuario desde la API de GitHub
REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos?per_page=100&page=1" | jq -r '.[].clone_url')

# Manejo de casos donde hay más de 100 repositorios
if [[ $(echo "$REPOS" | wc -w) -eq 100 ]]; then
    PAGE=2
    while true; do
        PAGE_REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos?per_page=100&page=$PAGE" | jq -r '.[].clone_url')
        [[ -z "$PAGE_REPOS" ]] && break
        REPOS="$REPOS $PAGE_REPOS"
        ((PAGE++))
    done
fi

# Clonación de cada repositorio
for REPO in $REPOS; do
    REPO_NAME=$(basename "$REPO" ".git")
    if [ -d "$REPO_NAME" ]; then
        echo "El repositorio '$REPO_NAME' ya está clonado."
    else
        git clone "$REPO"
    fi
done
