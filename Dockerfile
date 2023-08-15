# Container image that runs your code
FROM alpine:3
RUN apk add --no-cache jq gawk
COPY --from=1password/op:2 /usr/local/bin/op /usr/local/bin/op

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
