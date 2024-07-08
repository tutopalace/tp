#!/bin/bash

# Ce script devra permettre de configurer et de sécuriser un serveur. 
# Ce script avance au rythme des videos disponibles sur la chaine @tutopalace
# https://youtube.com/@tutopalace


## Pour la configuration d'un serveur
## 1. Mise à jour du serveur
## 2. Installation des utilitaires nécessaires : vim git ...
## 3. Ajout user 
## 4. Configuration permissions sudo pour user

## A venir ...
## 5. Crontab  ( maj programmée & reboot programmé )
## 6. Configuration SSH
## ...



# 1. Mise à jour du serveur
apt update && apt -y full-upgrade && apt -y clean && apt -y autoremove

# 2. Installation utilitaires (paquets) 
apt install vim git sudo iproute2 net-tools cron ssh

# 3. Création user tutopalace
useradd -m -s /bin/bash tutopalace

# 4. Ajout permission sudo pour tutopalace  
echo "tutopalace ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/tutopalace

# Suite à venir avec video sur la chaine youtube.com/@tutopalace  ;-)


