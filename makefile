pbpaste=bin/pbpaste.exe
${pbpaste}:paste.c
	gcc -o bin/pbpaste.exe paste.c 

install:${pbpaste}
	sed -i "/alias pbcopy=clip/d" ~/.bashrc
	echo "alias pbcopy=clip" >> ~/.bashrc
	cp bin/pbpaste.exe /bin

.PHONY:
	install

