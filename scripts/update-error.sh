cd arbitrage-bot-error-public
git pull
sudo docker build . -t arbitrage-bot-error
sudo docker stop arbitrage-bot-error
sudo docker rm arbitrage-bot-error
sudo docker run -d --restart unless-stopped --network=host --name=arbitrage-bot-error arbitrage-bot-error:latest