#!/bin/bash

curl "http://localhost:4741/forecast" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "lat": '42.369401',
    "long": '-71.101173'
  }'

echo
