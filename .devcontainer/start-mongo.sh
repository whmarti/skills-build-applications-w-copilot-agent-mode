#!/bin/bash

echo "📦 Verificando carpeta de datos para MongoDB..."
mkdir -p ~/data/db

echo "🚀 Iniciando MongoDB en segundo plano..."
mongod --dbpath ~/data/db --bind_ip_all --logpath ~/mongod.log


if ps aux | grep '[m]ongod' > /dev/null
then
then
  echo "MongoDB service is up and running!"
else
  echo "MongoDB failed to start."
fi