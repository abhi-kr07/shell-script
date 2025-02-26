#!/bin/bash
#

length=4
password=$(openssl rand -base64 $length)
echo "password is $password"
