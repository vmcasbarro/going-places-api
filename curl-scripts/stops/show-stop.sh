#!/bin/bash

curl "http://localhost:4741/trips/${TID}/stops/${SID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
