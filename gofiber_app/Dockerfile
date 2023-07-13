FROM golang:1.20.5-alpine

WORKDIR /app/

EXPOSE 8000

COPY . .

RUN go mod download
RUN go build -o gofiber_app

CMD [ "./gofiber_app" ]
