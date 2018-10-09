# get_prices() {

# # https://min-api.cryptocompare.com/data/price?fsym=XMR&tsyms=EUR
# }
run_segment() {
    xmr_val=curl https://min-api.cryptocompare.com/data/price?fsym=XMR&tsyms=EUR | jq -r '.EUR'
    btc_val=`curl https://min-api.cryptocompare.com/data/price\?fsym\=BTC\&tsyms\=EUR |  jq -r '.EUR'`
    eth_val=`curl https://min-api.cryptocompare.com/data/price\?fsym\=ETH\&tsyms\=EUR |  jq -r '.EUR'`
    xrp_val=`curl https://min-api.cryptocompare.com/data/price\?fsym\=XRP\&tsyms\=EUR |  jq -r '.EUR'`
    ltc_val=`curl https://min-api.cryptocompare.com/data/price\?fsym\=LTC\&tsyms\=EUR |  jq -r '.EUR'`
    bch_val=`curl https://min-api.cryptocompare.com/data/price\?fsym\=BCH\&tsyms\=EUR |  jq -r '.EUR'`
    printf "฿:%'d E:€%'d XRP:%0.2f Ł:%'d BCH:%'d" ${btc_val%.*} ${eth_val%.*} ${xrp_val} ${ltc_val%.*} ${bch_val%.*}
	return 0
}
