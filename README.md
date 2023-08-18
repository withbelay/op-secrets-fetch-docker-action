# 1 Password secrets puller

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

## `vault`

**Required** The name of the 1Password vault

## `app`

**Required** The name of the 1Password tag to filter by

## Outputs

## `fly-secrets`

The fly secrets

## Example usage

uses: actions/hello-world-docker-action@v2.0.1
with:
  vault: devops-staging
