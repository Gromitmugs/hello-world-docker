FROM golang:1.21.4

WORKDIR /go/app

COPY . .

RUN go build -o /go/app/hello-world -buildvcs=false

CMD ["/go/app/hello-world"]
