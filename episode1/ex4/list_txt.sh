# Cherche les fichiers .txt 
txt_files=$(ls *.txt 2> /dev/null)

# Vérifie s'il y a des fichiers .txt
if [ -z "$txt_files" ]; then
    echo "Aucun fichier .txt trouvé"
else
    echo "Fichiers .txt trouvés :"
    echo "$txt_files"
fi
