#!/bin/bash
cd arbitrage-price-bot
git pull
sudo docker build . -t arbitrage-price-bot
sudo docker stop arbitrage-price-bot
sudo docker rm arbitrage-price-bot
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-price-bot arbitrage-price-bot:latest