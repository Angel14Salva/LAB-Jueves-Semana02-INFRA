#!/bin/bash
while true
do
  git add .
  git commit -m "Respaldo automático: $(date)"
  git push origin main
  echo "Cambios subidos. Esperando 5 minutos..."
  sleep 300
done