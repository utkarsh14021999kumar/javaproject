#!/bin/bash
URL="https://google.com"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
if [ "$STATUS" -eq 200 ]; then
  echo "Website is up!" >> site_check.log
else
  echo "Website is down!" >> site_check.log
fi
