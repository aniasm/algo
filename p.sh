#!/bin/bash

isPrime() {
  local n=$1
  #echo "Param: $n"
  for((i=2; i<=$n/2; i++))
  do
    ans=$(( n%i ))
    if [ $ans -eq 0 ]
    then
      #echo "$n nie pierwsza."
      return
    fi
  done
  echo "$n "
  #echo "$n pierwsza."
}


echo -e "Wpisz liczbe: \c"
read num
result_all='';
for((j=2; j<=$num; j++))
do
  result_all+=$(isPrime $j)
done

echo "Wyniki: $result_all"
