#!/bin/bash

function ctrl_c(){
echo "Salida.."
}
trap ctrl_c INT

for port in $(seq 1 65535); do

timeout 1 bash -c "echo '' > /dev/tcp/<ip>/$port" 2>/dev/null && echo "[+]$port -> Abierto" &
done; wait
