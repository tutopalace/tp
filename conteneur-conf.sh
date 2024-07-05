#!/bin/bash

# MAJ
apt update && apt -y full-upgrade && apt -y clean && apt -y autoremove

# Installation paquets 
apt install vim git sudo iproute2 net-tools cron ssh

# Création user tutopalace
useradd -m -s /bin/bash tutopalace

# Ajout permission sudo pour tutopalace  
echo "tutopalace ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/tutopalace

