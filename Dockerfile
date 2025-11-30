FROM ubuntu:latest AS build
WORKDIR /roopa
COPY test.go .
RUN apt-get update && apt-get install -y golang
ENV GO111MODULE=off
RUN go build -o test test.go

#multistagebuild
FROM scratch
COPY --from=build /roopa /roopa
CMD ["/roopa/test"]
