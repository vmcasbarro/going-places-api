#!/bin/bash

curl "http://localhost:4741/trips/${TID}/stops/${SID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "stop": {
      "location": "'"${LOC}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
