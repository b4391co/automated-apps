#!/bin/bash

echo 'Dominio:'
echo ''
read dominio
mkdir ./$dominio
for line in $(cat subdominios.txt); do 
  url=$line.$dominio
  echo $url
  cutycapt --url=$url --out=./$dominio/$url.png
done
