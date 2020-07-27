# Phraseanet installation on Linux

## Prerequisites
To install Phraseanet, you must first install software below :
- [git](https://git-scm.com/download/linux)
- [docker](https://docs.docker.com/get-docker/) (≥ v18.01-ce)
- [docker-compose](https://docs.docker.com/compose/install/) (≥ v1.25.4)

## Get source

Clone this repository by typing in a terminal
```bash
git clone https://github.com/alchemy-fr/Phraseanet.git
```

## Setup administrator account

Edit `start.sh` file and modify following lines :
  - `INSTALL_ACCOUNT_EMAIL=foo@bar.com`
  - `INSTALL_ACCOUNT_PASSWORD=$3cr3t!`
  
## Install (and run) Phraseanet  
```bash
bash start.sh
```
Note that :
> - sudo prompt during installation to [set vm.max_map_count for elasticSearch container](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites).
> - The application run when the installation is complete.

Open a navigator on http://localhost:8082, that'all !


## Start/Stop application
  - Start : `bash start.sh`
  - Stop : `bash stop.sh`



