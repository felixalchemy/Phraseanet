# Phraseanet installation on Linux

### Prerequisites
To install Phraseanet, you must first install software below :
- [git](https://git-scm.com/download/linux)
- [docker](https://docs.docker.com/get-docker/) (≥ v18.01-ce)
- [docker-compose](https://docs.docker.com/compose/install/) (≥ v1.25.4)

### Get source

Clone this repository by typing in a terminal
```bash
git clone https://github.com/alchemy-fr/Phraseanet.git
```

### Setup administrator account
Into Phraseanet directory, edit `.env` file and modify following lines :
  - `INSTALL_ACCOUNT_EMAIL=foo@bar.com`
  - `INSTALL_ACCOUNT_PASSWORD=$3cr3t!`
  
### Install (and run) Phraseanet
```bash
bash Phraseanet/install/install.sh
```
Note that :
> - The application run when the installation is complete, open a navigator on http://localhost:8082, that'all !
  
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



