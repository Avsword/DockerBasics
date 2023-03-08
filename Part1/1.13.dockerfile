FROM alpine:3.17

EXPOSE 8080
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN apk update
RUN apk add --update --no-cache go vim git make musl-dev curl
RUN go build

RUN go test ./..