#!/bin/bash
cd arbitrage-bot-purchaser-public
git pull
sudo docker build . -t arbitrage-bot-purchaser
sudo docker stop arbitrage-bot-purchaser && sudo docker rm arbitrage-bot-purchaser
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-bot-purchaser arbitrage-bot-purchaser:latest
sudo docker logs arbitrage-bot-purchaser