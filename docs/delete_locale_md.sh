#!/bin/bash

# Supprimer tous les fichiers .md qui contiennent des locales
find . -name "*.en.md" -o -name "*.hi.md" -o -name "*.ja.md" -o -name "*.ko.md" -o -name "*.ru.md" -o -name "*_en.md" | grep -v "chinese_md" | xargs rm -f

echo "Suppression terminée!" 
