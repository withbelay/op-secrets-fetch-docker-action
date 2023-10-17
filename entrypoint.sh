#!/bin/sh -l
secrets=$(op item list --vault $1 --format=json | op item get - --format=json | jq -r '"\(.title)=\"\(.fields[0].value)\""' | awk -v d=" " '{s=(NR==1?s:s d)$0}END{print s}')
echo "fly_secrets='$secrets'" >> $GITHUB_OUTPUT
