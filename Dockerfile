# Container image that runs your code
FROM alpine
RUN apk add --no-cache jq curl

RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local sh
COPY --from=1password/op:2 /usr/local/bin/op /usr/local/bin/op

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
