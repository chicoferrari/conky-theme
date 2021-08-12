#!/bin/bash

cd $(dirname $0)

file=weather.sh
city_name=$1
country_code=$2

city_name_encoded=`echo "${city_name,,}" | jq -Rr @uri`

city_name_lowercase=`echo "${city_name_encoded,,}"`

sed -i "s/city_name=.*/city_name=$city_name_lowercase/" $file
sed -i 's/country_code=.*'/country_code=$country_code'/' $file
