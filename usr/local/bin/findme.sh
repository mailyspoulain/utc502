#!/bin/bash

find /home -type f -name "FindMe.txt" -exec rm -f {} \;

# Log de l'opération
echo "$(date): Recherche et suppression des fichiers FindMe.txt terminée." >> /var/log/findme.log
