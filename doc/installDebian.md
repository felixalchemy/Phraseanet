# Phraseanet installation on Linux Debian / Ubuntu

### Install

Open a terminal and type command below :
```bash
wget -q https://raw.githubusercontent.com/felixalchemy/Phraseanet/master/install/auto.sh && bash auto.sh -nc
```
> - The application run when the installation is complete.
> - It can be run from an usb key [live distribution](https://livecdlist.com/).

Open a navigator on http://localhost:8082, that'all !


[Vidéo de l'installation]

### Start/Stop application
  - Start : `bash Phraseanet/install/start.sh`
  - Stop : `bash Phraseanet/install/stop.sh`

### Uninstall
```bash
bash Phraseanet/install/uninstall.sh
```
This process interactively offers to uninstall one or more of the following items :
 - Phraseanet app
 - Docker and Docker-compose
 - Git
 - Phraseanet sources