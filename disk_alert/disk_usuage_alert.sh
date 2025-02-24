#!/bin/bash
#If disk usuga goes upto 80% send an alert mail

THRESHOLD=30
EMAIL=abhishekkr98dhn@gmail.com

df -h | awk 'NR>1 {print $5}' | while read output; do
        usuage=$(echo ${output} | sed 's/%//')
        if [[ "${usuage}" -ge "${THRESHOLD}" ]];
        then
                echo "Warning:" | mail -s "Disk Usage Alert" "${EMAIL}"
        fi
done
