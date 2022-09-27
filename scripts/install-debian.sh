#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt-get install -y git nodejs npm
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
git clone https://github.com/EthanHarsh/arbitrage-bot-purchaser-public.git
git clone https://github.com/EthanHarsh/arbitrage-price-bot-public.git
git clone https://github.com/EthanHarsh/arbitrage-bot-trade-supervisor-public.git
cp env/example.env arbitrage-bot-purchaser-public/.env
cp env/example.env arbitrage-bot-trade-supervisor-public/.env
cp env/example.env arbitrage-price-bot-public/.env
sudo docker build arbitrage-bot-purchaser-public/. -t arbitrage-bot-purchaser
sudo docker build arbitrage-bot-trade-supervisor-public/. -t arbitrage-bot-trade-supervisor
sudo docker build arbitrage-price-bot-public/. -t arbitrage-price-bot
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-bot-purchaser arbitrage-bot-purchaser:latest
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-bot-trade-supervisor arbitrage-bot-trade-supervisor:latest
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-price-bot arbitrage-price-bot:latest