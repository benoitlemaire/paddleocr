#!/bin/bash

# Créer le dossier principal
mkdir -p chinese_md

# Trouver tous les fichiers .md qui ne sont pas des fichiers avec des locales
find . -name "*.md" | grep -v "\.en\.md$" | grep -v "\.hi\.md$" | grep -v "\.ja\.md$" | grep -v "\.ko\.md$" | grep -v "\.ru\.md$" | grep -v "chinese_md" | grep -v "_en\.md$" | while read file; do
  # Extraire le chemin relatif
  rel_path=$(echo $file | sed "s|^\./||")
  # Créer le dossier de destination
  mkdir -p "chinese_md/$(dirname $rel_path)"
  # Copier le fichier
  cp "$file" "chinese_md/$rel_path"
done

echo "Copie terminée!" 
