#!/bin/bash

echo "Elige tu fruta favorita"
select fruta in "manzana" "pera" "naranja" "kiwi" "mango"
do
   echo "Tu fruta favortia es $fruta."
   break 
done
