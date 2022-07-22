FROM golang:1.18-alpine

WORKDIR /app
RUN apk add build-base
COPY src/go.mod ./
COPY src/go.sum ./

RUN go mod download

COPY src/ ./

RUN go build -o /microservice

EXPOSE 8080

CMD [ "/microservice" ]