#./rest_api_samples.sh | grep "plenty\|some" -B 6 | grep "addr\|name\|remain" --color
site=https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1

store=/stores/json
page=1
perPage=1

#curl https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/stores/json?page=1
#curl -v get 'https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/stores/json?page=1'

#https://blog.acidpop.kr/284
#addr="서울특별시 강남구"
#curl -G "https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/storesByAddr/json" --data-urlencode "address=서울특별시 강남구" -H "accept: application/json" 
curl -G "https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/storesByAddr/json" --data-urlencode "address=$addr" -H "accept: application/json" 


lat=37.5338318
long=130.8557941
meter=5000
#curl -X GET "https://8oi9s0nnth.apigw.ntruss.com/corona19-masks/v1/storesByGeo/json?lat=$lat&lng=$long&m=$meter" -H "accept: application/json"
