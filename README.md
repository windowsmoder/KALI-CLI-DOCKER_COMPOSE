<div align="center">

# 🐉 Kali Linux Docker CLI

[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![Kali Linux](https://img.shields.io/badge/Kali_Linux-557C94?style=for-the-badge&logo=kali-linux&logoColor=white)](https://www.kali.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

**🇫🇷 Français** | [🇬🇧 English](#-english-version)

</div>

---

> [!WARNING]
> **DISCLAIMER** — Les fichiers `docker-compose.yml` et `entrypoint.sh` ont été générés via **Claude Sonnet 4.6** (Anthropic).
> Ce projet est destiné à un usage éducatif et légal uniquement. Toute utilisation malveillante est strictement interdite.

---

## 📋 Prérequis

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installé et lancé

---

## 🚀 Installation

### 1. Télécharger le dossier `kali` depuis GitHub et extraire le dossier kali

### 2. Ouvrir un terminal et accéder au dossier `kali`

```bash
cd /chemin/vers/kali
```

### 3. Rendre le script exécutable

```bash
chmod +x entrypoint.sh
```

---

## ▶️ Lancer le conteneur

```bash
# Démarrer en arrière-plan
docker compose up -d

# Entrer dans Kali
docker attach kali-cli
```

Le prompt suivant doit apparaître :

```
┌──(root㉿kali-cli)-[/]
└─#
```

---

## ⌨️ Commandes essentielles

### Gestion du conteneur

| Commande | Description |
|----------|-------------|
| `docker compose up -d` | Démarrer le conteneur |
| `docker compose down` | Arrêter le conteneur |
| `docker compose down -v` | Arrêter le conteneur et supprimer les volumes |
| `docker rm -f kali-cli` | Supprimer le conteneur de force |
| `docker rm kali-cli` | Supprimer le conteneur (arrêté uniquement) |

### Connexion / Déconnexion

| Commande | Description |
|----------|-------------|
| `docker attach kali-cli` | Entrer dans le shell Kali |
| `Ctrl+P` puis `Ctrl+Q` | Quitter le conteneur sans l'arrêter |
| `exit` | Quitter et arrêter le conteneur |

---

## 🛠️ Post-déploiement

```bash
# Mettre à jour les paquets
apt update

# Installer les 10 outils essentiels Kali
apt install -y kali-tools-top10

# Ou des outils spécifiques
apt install -y nmap metasploit-framework burpsuite wireshark
```

---

## 📁 Structure du projet

```
kali/
├── docker-compose.yml   # Configuration Docker
├── entrypoint.sh        # Script d'initialisation du shell
├── shared/              # Dossier partagé hôte ↔ conteneur
└── README.md
```

---
---

## 🇬🇧 English Version

<div align="center">

**[🇫🇷 Français](#-prérequis)** | 🇬🇧 English

</div>

---

> [!WARNING]
> **DISCLAIMER** — The `docker-compose.yml` and `entrypoint.sh` files were generated using **Claude Sonnet 4.6** (Anthropic).
> This project is intended for educational and legal use only. Any malicious use is strictly prohibited.

---

## 📋 Requirements

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running

---

## 🚀 Installation

### 1. Download the `kali` folder from GitHub and xtract the kali folder

### 2. Open a terminal and navigate to the `kali` folder

```bash
cd /path/to/kali
```

### 3. Make the script executable

```bash
chmod +x entrypoint.sh
```

---

## ▶️ Start the container

```bash
# Start in background
docker compose up -d

# Enter Kali shell
docker attach kali-cli
```

You should see the following prompt:

```
┌──(root㉿kali-cli)-[/]
└─#
```

---

## ⌨️ Essential commands

### Container management

| Command | Description |
|---------|-------------|
| `docker compose up -d` | Start the container |
| `docker compose down` | Stop the container |
| `docker compose down -v` | Stop the container and delete volumes |
| `docker rm -f kali-cli` | Force delete the container |
| `docker rm kali-cli` | Delete the container (stopped only) |

### Connect / Disconnect

| Command | Description |
|---------|-------------|
| `docker attach kali-cli` | Enter the Kali shell |
| `Ctrl+P` then `Ctrl+Q` | Detach without stopping the container |
| `exit` | Exit and stop the container |

---

## 🛠️ Post-deployment

```bash
# Update packages
apt update

# Install Kali's top 10 essential tools
apt install -y kali-tools-top10

# Or install specific tools
apt install -y nmap metasploit-framework burpsuite wireshark
```

---

## 📁 Project structure

```
kali/
├── docker-compose.yml   # Docker configuration
├── entrypoint.sh        # Shell initialization script
├── shared/              # Shared folder host ↔ container
└── README.md
```

---

<div align="center">

Made with ❤️ — Powered by [Kali Linux](https://www.kali.org/) & [Docker](https://www.docker.com/)

</div>
