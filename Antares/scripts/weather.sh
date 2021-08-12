#!/bin/bash

api_key=1a574cba6c46aef984b2efbe3061b147
city_name=s%c3%a3o%20sebasti%c3%a3o
country_code=BR
#city_name_encoded=`echo "${city_name}" | jq -Rr @uri`
url="api.openweathermap.org/data/2.5/weather?q=${city_name},${country_code}&appid=${api_key}"
curl --url "${url}" -s -o ~/.cache/eleg-weather.json