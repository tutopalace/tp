# youtube.com/@tutopalace
Repository pour exposition des fichiers traités dans la chaine Youtube de @tutopalace.


### Apprendre le terminal Linux
1. Commande ls
2. Commande cd
3. Commande cat
4. Editeur vim
5. Commande mkdir
6. Commande rm
7. Commande grep
8. Commande find 
   

### Apprendre à configurer un serveur Ubuntu Linux  depuis windows ou macOS avec les conteneurs 

1. Docker Desktop - Installation
2. Docker Desktop - Les conteneurs
3. Docker Desktop - Les conteneurs (suite)
4. Docker & Ubuntu - Mise à jour Ubuntu & Install Vi
5. Docker & Ubuntu - Environnement  env, PATH, PS1
6. Docker & Ubuntu - Création d'un utilisateur - adduser & useradd
7. Docker & Ubuntu - Permissions avec SUDO - Bonus decouverte de SED
8. Docker & Ubuntu - Permissions rwx  - Commande chmod 



### script de configuration rapide: conteneur-conf.sh

```bash
#!/bin/bash

## INFO : 
## Ce script devra permettre de configurer et de sécuriser un serveur. 
## Ce script avance au rythme des videos disponibles sur la chaine @tutopalace
## https://youtube.com/@tutopalace


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
```

