#!/bin/bash

curl "http://localhost:4741/trips/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "trip": {
      "name": "'"${NAME}"'"
    }
  }'

echo
