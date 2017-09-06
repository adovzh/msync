.PHONY : upload

upload : msync
	scp msync dan@epia:/home/dan && ssh -t epia "chmod 555 msync && sudo mv msync /usr/local/bin/" 
