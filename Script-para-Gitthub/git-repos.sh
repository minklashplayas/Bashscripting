#!/bin/bash

# Nombre de usuario de GitHub
USERNAME="codewithsadee"

# Obtén la lista completa de repositorios del usuario desde la API de GitHub
REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos?per_page=100&page=1" | jq -r '.[].clone_url')

# Agrega una página adicional si hay más de 100 repositorios
if [[ $(echo "$REPOS" | wc -w) -eq 100 ]]; then
    PAGE=2
    while true; do
        PAGE_REPOS=$(curl -s "https://api.github.com/users/$USERNAME/repos?per_page=100&page=$PAGE" | jq -r '.[].clone_url')
        [[ -z "$PAGE_REPOS" ]] && break
        REPOS="$REPOS $PAGE_REPOS"
        ((PAGE++))
    done
fi

# Clona cada repositorio
for REPO in $REPOS; do
    git clone $REPO
done
