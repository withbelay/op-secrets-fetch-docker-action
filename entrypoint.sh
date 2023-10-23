#!/bin/sh -l
op item list --vault $1 --format=json \
  | op item get - --format=json \
  | jq -r '"\(.title)=\"\(.fields[0].value)\""' \
  | tr '\n' '\0' \
  | xargs -0 -t fly secrets set -a $2 --stage
