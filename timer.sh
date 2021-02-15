#/bin/sh

echo "Programa iniciado!"; 

vibrate(){
  for ((i = 0 ; i < $1 ; i++)); do
    termux-vibrate -fd 1500;
    sleep 1;
  done
}

timer(){
  minutes=$(date +%M);
  mesage="";

  # for debug
  minutes=$1

  if [[ $minutes -eq 15 ]]; then
    vibrate 1;
    message="15 minutos se passaram!";

  elif [[ $minutes -eq 30 ]]; then
    vibrate 2;
    message="30 minutos se passaram!";

  elif [[ $minutes -eq 45 ]]; then
    vibrate 3;
    message="45 minutos se passaram!";

  elif [[ $minutes -eq 00 ]]; then
    vibrate 4;
    message="Uma hora se passou!";
  fi
  
  if [[ -n $message ]]; then
    echo $message;
    echo $(date +%R);
  fi
}

while true; do
  timer $2;
  sleep $1; 
done
