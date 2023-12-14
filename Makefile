get-template:
	go install golang.org/x/tools/cmd/gonew@latest
	gonew golang.org/x/example/helloserver github.com/wsollers/myserver

clean:
	rm -rf bin/*

compile:
	@echo "Compiling..."
	go build -o bin/server ./server.go
	@echo "Done."

run:
	@echo "Running..."
	bin/server

