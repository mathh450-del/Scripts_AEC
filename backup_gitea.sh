#!/bin/bash
# Dossier source et destination
SOURCE="/opt/docker/gitea"
DEST="/mnt/backup/gitea"
DATE=$(date +%Y-%m-%d_%Hh%M)

# Créer un dossier avec la date du jour
mkdir -p $DEST/$DATE

# Copier les fichiers
cp -r $SOURCE $DEST/$DATE

# Supprimer les sauvegardes de plus de 30 jours pour ne pas remplir le disque
find $DEST/* -type d -ctime +30 -exec rm -rf {} +
