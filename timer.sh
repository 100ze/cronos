#/bin/sh
while true; do
  echo "Se passaram 15 minutos!"; 
  termux-vibrate -fd 1500;
  sleep $1; 
done
