#!/bin/bash

for i in $(seq 1 254); do
timeout 1 bash -c "ping -c 1 127.0.0.$i" &>/dev/null && echo "[+] Active Host 127.0.0.$i" &
done; wait
