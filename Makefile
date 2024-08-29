BINARY_NAME=ollama-copilot

build:
	GOARCH=amd64 GOOS=linux go build -o $(BINARY_NAME)-linux cmd/main.go

run:
	go run cmd/main.go

clean:
	go clean
	rm -rf $(BINARY_NAME)-linux

dep:
	go mod download

test:
	go test ./...

coverage:
	go test ./... -cover