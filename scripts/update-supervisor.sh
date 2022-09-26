cd arbitrage-bot-trade-supervisor/
git pull
sudo docker build . -t arbitrage-bot-trade-supervisor && sudo docker stop arbitrage-bot-trade-supervisor && sudo docker rm arbitrage-bot-trade-supervisor
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-bot-trade-supervisor arbitrage-bot-trade-supervisor:latest
sudo docker logs arbitrage-bot-trade-supervisor