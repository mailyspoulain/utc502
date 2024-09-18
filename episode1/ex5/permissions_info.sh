# Vérifier si un fichier est passé en argument
if [ -z "$1" ]; then
    echo "Erreur : Veuillez fournir un fichier en argument."
    exit 1
fi

# Vérifier si le fichier existe
if [ ! -e "$1" ]; then
    echo "Erreur : Le fichier '$1' n'existe pas."
    exit 1
fi

# Afficher les permissions du fichier
permissions=$(stat -c "%A" "$1")
echo "Permissions: $permissions"

# Vérifier si l'utilisateur a les droits d'exécution
if [ -x "$1" ]; then
    echo "Vous avez les droits d'exécution sur ce fichier."
else
    echo "Vous n'avez pas les droits d'exécution sur ce fichier."
f
