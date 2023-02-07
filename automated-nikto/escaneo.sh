#!/bin/bash

echo 'Dominio:'
echo ''
read dominio
mkdir ./escaneos
for line in $(cat subdominios.txt); do 
  url=$line.$dominio
  echo $url
  nikto -Tuning b -h $url | tee -a ./escaneos/$dominio.txt
done
