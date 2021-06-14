#!/bin/bash
file="$1"
echo $1

APIName=[FILL IN YOUR API NAME]
APIToken=[FILL IN YOUR API TOKEN]
curl -X POST "https://api.wigle.net/api/v2/file/upload" -H "accept: application/json" -H "Content-Type: multipart/form-data" -F "file=@$file;type=text/csv" -F "donate=on" -i -H 'Accept:application/json' -u $APIName:$APIToken --basic && mv $1 /kismets/toWigle/


