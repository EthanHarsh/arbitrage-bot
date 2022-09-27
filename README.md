# arbitrage-bot
_Scripts to download, build, run, and update all arbitrage bot microservices on Debian and Ubuntu._

## Description

Contains scripts to download, build, run, and update all arbitrage bot microservices. Debian and Ubuntu installations are supported. The scripts are intended to be used with a fresh distro installation. All required dependencies will be installed.

## Quick Start

### Ubuntu
1. Clone Repo
```
git clone https://github.com/EthanHarsh/arbitrage-bot.git
```
2. Update env/example.env file
```
FANTOM_PRIVATE_KEY="PRIVATE KEY HERE"
MONGO_URI="MONGO URI HERE"
FANTOM_RPC="RPC URL HERE"
```
3. Run Ubuntu install script.
```
cd arbitrage-bot
bash scripts/install-ubuntu.sh
```

### Debian
1. Install Git
```
sudo apt-get update
sudo apt-get install -y git
```
2. Clone Repo
```
git clone https://github.com/EthanHarsh/arbitrage-bot.git
```
3. Update env/example.env file
```
FANTOM_PRIVATE_KEY="PRIVATE KEY HERE"
MONGO_URI="MONGO URI HERE"
FANTOM_RPC="RPC URL HERE"
```
4. Run Debian install script.
```
cd arbitrage-bot
bash scripts/install-debian.sh
```

## Update
### Hard Update
_Deletes all microservices and re-installs them **Use to add new microservices**_
```
bash scripts/update-hard.sh
```
### Update All
_Updates all currently downloaded microservices_
```
bash scripts/update-all.sh
```
### Update Price Bot
```
bash scripts/update-price-bot.sh
```

### Update Purchaser
```
bash scripts/update-purchaser.sh
```

### Update Supervisor
```
bash scripts/update-supervisor.sh
```

### Update Error
```
bash scripts/update-error.sh
```