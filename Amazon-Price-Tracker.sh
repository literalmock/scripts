#!/bin/sh
webpage=$(curl -s 'https://www.amazon.in/Casio-FX-991ES-Non-Programmable-Scientific-Calculator/dp/B0B2RR481F/ref=sr_1_2?crid=3KEW45JTX450D&keywords=calculator+fx991+es+plus&qid=1703874430&sprefix=calculator+fx991+esplu%2Caps%2C200&sr=8-2' --compressed -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0')
price=$(echo $webpage | pup "span.a-offscreen:first-child text{}" | head -n 1 | sed 's/^.//g'| cut -d. -f1 )
(( $price > "1,200" )) && dunstify "too expensive"
# if [ $price > 1,200 ]; then
#   $kitty
# fi
