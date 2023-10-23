#!/bin/sh -l
op item list --vault $1 --format=json \
  | op item get - --format=json \
  | jq -r '"\(.title)=\"\(.fields[0].value)\""' \
  | fly secrets import -a $2 --stage
