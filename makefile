pbpaste=bin/pbpaste.exe
${pbpaste}:paste.c
	gcc -o bin/pbpaste.exe paste.c 

install:${pbpaste}
	cp bin/pbpaste.exe /bin

.PHONY:
	install

