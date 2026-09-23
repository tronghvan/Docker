FROM golang:1.23-alpine AS builder

WORKDIR /app

COPY app.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o myapp app.go


FROM alpine:3.20


RUN apk --no-cache add ca-certificates tzdata

ENV TZ=Asia/Ho_Chi_Minh

COPY --from=builder /app/myapp .

CMD ["./myapp"]
