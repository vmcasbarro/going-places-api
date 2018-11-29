#!/bin/bash

curl "http://localhost:4741/trips/${TID}/stops" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
