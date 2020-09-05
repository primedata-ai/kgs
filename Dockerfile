FROM golang:1.13.7-alpine AS builder

WORKDIR /app

RUN apk add --no-cache git bash

# Install dependencies
COPY go.mod go.sum ./
RUN go mod download

# Verify dependencies
RUN go mod verify

COPY . .

RUN go build -o build/app main.go

FROM alpine:3.10

WORKDIR /kgs

RUN apk add --no-cache bash

COPY --from=builder /app/build/app ./build/app
COPY --from=builder /app/scripts/wait-for-it ./scripts/wait-for-it
COPY --from=builder /app/app/adapter/db/migration ./app/adapter/db/migration
COPY --from=builder /app/app/adapter/template/*.gohtml ./app/adapter/template/

ENV DB_HOST=127.0.0.1
ENV DB_PORT=5432
ENV DB_USER=kgs
ENV DB_PASSWORD=kgs
ENV DB_NAME=kgs
ENV ENABLE_ENCRYPTION=false
ENV GRPC_API_PORT=8080

CMD ["./build/app", "start"]