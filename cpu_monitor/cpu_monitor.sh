#!/bin/bash
#
cpu_usuage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
if [[ $(echo "$cpu_usuage >= 5" | bc -l) ]];
then
        echo "CPU usuage increased"
        mail -s "cpu usuage increased" "abhishekkr98dhn@gmail.com"
else
        echo "Sit back with relax"
fi
