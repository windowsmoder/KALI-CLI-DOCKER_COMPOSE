##############################  DISCLAIMER ##############################################
Les fichiers docker-compose.yml ainsi que entrypoint.sh on été crée via CLAUDE-SONNET-4.6
#########################################################################################

1.Creer un dossier Kali.

# Créer le dossier "kali"
mkdir kali

2.Copier les fichiers : - docker-compose.yml  dans le dossier "kali".
                        - entrypoint.sh

3.Ajouter les droits d'execution du script "entrypoint.sh".

# Rendre le script exécutable
chmod +x entrypoint.sh

############ LANCER LE CONTAINER KALI-CLI ###############

# Lancer le conteneur
docker compose up -d

# Entrer dans Kali
docker attach kali-cli

L'interface de kali suivante devrait apparaitre :

┌──(root㉿1ebec4f8761f)-[/]
└─# 

# Quitter le container
Exit

############ COMMANDES POST DEPLOIEMENT ###############

# Mettre à jour
apt update

# Outils essentiels
apt install -y kali-tools-top10

# Ou des outils spécifiques
apt install -y nmap metasploit-framework burpsuite
