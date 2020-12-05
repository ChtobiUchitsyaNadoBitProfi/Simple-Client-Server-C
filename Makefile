all: server client

server: server.c erproc.c liteSH.c
	gcc -Wall -o server server.c erproc.c liteSH.c -lm

client: client.c erproc.c liteSH.c
	gcc -Wall -o client client.c erproc.c liteSH.c -lm

clean: 
	rm -rf server && rm -rf client
