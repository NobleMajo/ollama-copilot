BINARY_NAME := ollama-copilot
VERSION := $(shell cat version.txt)
COMMIT := $(shell git rev-parse --short HEAD)

build:
	go build -o $(BINARY_NAME) -ldflags='-X main.Version=$(VERSION) -X main.Commit=$(COMMIT)' main.go

run:
	go run main.go

clean:
	go clean
	rm -rf $(BINARY_NAME)

dep:
	go mod download

test:
	go test ./...

coverage:
	go test ./... -cover