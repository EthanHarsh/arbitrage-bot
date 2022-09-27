sudo rm -r arbitrage-price-bot-public
sudo rm -r arbitrage-bot-purchaser-public
sudo rm -r arbitrage-bot-error-public
sudo rm -r arbitrage-bot-supervisor-public
git clone https://github.com/EthanHarsh/arbitrage-bot-purchaser-public.git
git clone https://github.com/EthanHarsh/arbitrage-price-bot-public.git
git clone https://github.com/EthanHarsh/arbitrage-bot-trade-supervisor-public.git
git clone https://github.com/EthanHarsh/arbitrage-bot-error-public.git
cp env/example.env arbitrage-bot-purchaser-public/.env
cp env/example.env arbitrage-bot-trade-supervisor-public/.env
cp env/example.env arbitrage-price-bot-public/.env

bash scripts/update-all.sh