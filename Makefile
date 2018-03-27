.PHONY : upload install

upload : msync
	scp msync dan@epia:/home/dan && ssh -t epia "chmod 555 msync && sudo mv msync /usr/local/bin/" 

install : msync
	sudo cp msync /usr/local/bin
	sudo chown media:media /usr/local/bin/msync
	sudo chmod 500 /usr/local/bin/msync
