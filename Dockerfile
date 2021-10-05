FROM golang:1.16-alpine3.13
ENV CGO_ENABLED=0
WORKDIR /go/src/
RUN go get github.com/mengqiy/starlark-fn

#############################################

FROM alpine:3.13
COPY --from=0 /go/bin/starlark-fn /usr/local/bin/star
COPY source.star /starlark/
ENTRYPOINT ["star", "--source", "/starlark/source.star"]
