get-template:
	go install golang.org/x/tools/cmd/gonew@latest
	gonew golang.org/x/example/helloserver github.com/wsollers/myserver
