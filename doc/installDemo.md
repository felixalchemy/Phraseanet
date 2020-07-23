# Phraseanet Linux Classic installation

## Install Docker
To install Phraseanet, you must first [install Docker software](https://docs.docker.com/get-docker/).

## Get source

Clone this repository by typing in a terminal
```bash
git clone https://github.com/alchemy-fr/Phraseanet.git
```

## Setup administrator account

Edit `classicInstall.sh` file and modify following lines :
  - `INSTALL_ACCOUNT_EMAIL=foo@bar.com`
  - `INSTALL_ACCOUNT_PASSWORD=$3cr3t!`
  
## Install (and run) Phraseanet  
```bash
/bin/bash classicInstall.sh
```
Note that :
> - sudo prompt during installation to [set vm.max_map_count for elasticSearch container](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites).
> - The application run when the installation is complete.

Open a navigator on http://localhost:8082, that'all !


## Start/Stop application
  - Start : `INSTALL_ACCOUNT_EMAIL=foo@bar.com`
  - Stop : `INSTALL_ACCOUNT_PASSWORD=$3cr3t!`



