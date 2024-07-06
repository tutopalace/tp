#!/bin/bash

# Pour la configuration d'un serveur
> 1. Mise à jour du serveur
> 2. Installation des utilitaires nécessaires : vim git ...
> 3. Ajout user 
> 4. Configuration permissions sudo pour user
> 5. Configuration SSH
> 6. Crontab  ( maj programmée & reboot programmé )
> 7. Configuration du pare-feu
> 8. Configuration du serveur (Apache, gitlab, ...)


# 1. Mise à jour du serveur
apt update && apt -y full-upgrade && apt -y clean && apt -y autoremove

# 2. Installation utilitaires (paquets) 
apt install vim git sudo iproute2 net-tools cron ssh

# Création user tutopalace
useradd -m -s /bin/bash tutopalace

# Ajout permission sudo pour tutopalace  
echo "tutopalace ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/tutopalace

