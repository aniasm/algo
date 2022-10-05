#!/bin/bash

curl https://portalpasazera.pl/KatalogStacji?stacja=WARSZAWA+OCHOTA | tr -d "\r" > odjazdy.html
grep  "item-label\"" odjazdy.html > nag1.html
sed 's/\(<span class="item-label">\|<\/span>\)//g' < nag1.html > nag2.html
tr "\n" "," < nag2.html > nag3.html
#sed -e 's/                    Odjazd/Odjazd/g'  <nag3.html
grep "class=\"item-value\">" odjazdy.html > item-value.html
sed -e 's/<[^>]*>//g' item-value.html > values-multi.txt
tr "\n" "," < values-multi.txt > values-single.txt
sed -e 's/                    Odjazd/\nOdjazd/g'  <values-single.txt > values.txt
sed -e 's/                    Odjazd/Odjazd/g'  <nag3.html > nag2.html
head -q -n 6 nag2.html values.txt
