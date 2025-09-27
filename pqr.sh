#!/bin/bash
URL="https://google.com"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if [ "$STATUS" -eq 200 ]; then
  echo "Website is up!" >> site_check.log
else
  echo "Website is down please check it is correct or not working fine or not are you there!" >> site_check.log
fi
