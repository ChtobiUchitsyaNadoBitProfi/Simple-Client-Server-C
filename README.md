[![Build Status](https://travis-ci.org/ChtobiUchitsyaNadoBitProfi/Simple-Client-Server-C.svg?branch=main)](https://travis-ci.org/ChtobiUchitsyaNadoBitProfi/Simple-Client-Server-C)

# Simple-Client-Server-C
This project implements a simple local server in C, and the client program is also implemented. The functionality of the program consists in transmitting messages from the client to the server, and the server performs the main functionality of the project. The main functionality includes the functions of starting processes on the server, starting hidden processes, sending signals to processes, and checking the signal reception by the process. In order to use the program, you need to compile it using the Make command in the program code directory, then, for example, run the server in one terminal window using the command ./server, and in another window, launch the client using the command ./client. in the terminal window with the client, a menu from my other LiteSH project will appear...

OS: Arch Linux

Install:
- makepkg
- sudo pacman -U (nameofpackage).tar.gz
- systemctl start LiteSH

Delete:
- systemctl stop LiteSH
- systemctl disable LiteSH
- sudo pacman -R LiteSH
