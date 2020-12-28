all: bin/server bin/client

bin/server: src/server.c src/libs/erproc.c src/libs/liteSH.c
	gcc -Wall -o bin/server src/server.c src/libs/erproc.c src/libs/liteSH.c -lm

bin/client: src/client.c src/libs/erproc.c src/libs/liteSH.c
	gcc -Wall -o bin/client src/client.c src/libs/erproc.c src/libs/liteSH.c -lm

clean: 
	rm -rf bin/server && rm -rf bin/client
