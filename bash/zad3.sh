#!/bin/bash

echo "USD: $(curl -s 'http://api.nbp.pl/api/exchangerates/rates/a/usd/?format=json' | jq -r '.rates[0].mid')"

echo "GBP: $(curl -s 'http://api.nbp.pl/api/exchangerates/rates/a/gbp/?format=json' | jq -r '.rates[0].mid')"

echo "CHF: $(curl -s 'http://api.nbp.pl/api/exchangerates/rates/a/chf/?format=json' | jq -r '.rates[0].mid')"

echo "EUR: $(curl -s 'http://api.nbp.pl/api/exchangerates/rates/a/eur/?format=json' | jq -r '.rates[0].mid')"