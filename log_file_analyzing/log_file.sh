#!/bin/bash
# check the Ist top 5 request comes to the apache server

LOG_FILE=/var/log/apache2/access.log
echo "Top 5 ip-address is: "
awk '{print $1}' "${LOG_FILE}" | sort -nr | uniq -c |  head -n 5
