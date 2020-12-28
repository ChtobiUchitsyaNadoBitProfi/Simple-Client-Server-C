CC = gcc
CFLAGS = -Wall -Werror
CLIENT = LiteSH
SERVER = LiteSHserver
SERVICE = LiteSH.service

all: bin/$(CLIENT) bin/$(SERVER)

bin/$(CLIENT): build/client.o build/erproc.o build/liteSH.o
	$(CC) $(CFLAGS) $^ -o $@ -ldl

bin/$(SERVER): build/server.o build/erproc.o build/liteSH.o
	$(CC) $(CFLAGS) $^ -o $@
	
build/client.o: src/client.c
	$(CC) $(CFLAGS) -c $< -o $@

build/server.o: src/server.c
	$(CC) $(CFLAGS) -c $< -o $@
	
build/erproc.o: src/libs/erproc.c
	$(CC) $(CFLAGS) -c $< -o $@
	
build/liteSH.o: src/libs/liteSH.c
	$(CC) $(CFLAGS) -c $< -o $@
	
.PHONY: clean install unistall

clean: 
	rm -rf build/*.o
	rm -rf bin/*
	
install: bin/$(CLIENT) bin/$(SERVER)
	mkdir -p $(DESTDIR)/usr/bin
	cp -f bin/$(CLIENT) $(DESTDIR)/usr/bin
	chmod 755 $(DESTDIR)/usr/bin/LiteSH
	cp -f bin/$(SERVER) $(DESTDIR)/usr/bin
	chmod 755 $(DESTDIR)/usr/bin/LiteSHserver
	
	
	mkdir -p $(DESTDIR)/usr/lib
	cp -f build/libhelp.so $(DESTDIR)/usr/lib
	
	mkdir -p $(DESTDIR)/etc/systemd/system
	cp -f $(SERVICE) $(DESTDIR)/etc/systemd/system
	chmod 755 $(DESTDIR)/etc/systemd/system/LiteSH.service
	
unistall:
	rm -f $(DESTDIR)/usr/bin/LiteSH
	rm -f $(DESTDIR)/usr/bin/LiteSHserver
	rm -f $(DESTDIR)/etc/systemd/system/LiteSH.service