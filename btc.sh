# In a looped script (every minute)
price=$(curl -s 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd' | jq -r '.bitcoin.usd')
echo "\$${price}" > ~/.config/conky/btc.txt

price1=$(curl -s 'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd' | jq -r '.ethereum.usd')
echo "\$${price1}" > ~/.config/conky/eth.txt

price2=$(curl -s 'https://api.coingecko.com/api/v3/simple/price?ids=zilliqa&vs_currencies=usd' | jq -r '.zilliqa.usd // "null"')
if [ "$price2" = "null" ]; then
  echo "Error: Unable to fetch Zilliqa price" > ~/.config/conky/zil.txt
else
  echo "\$${price2}" > ~/.config/conky/zil.txt
fi

