

all: yousician_transcode.so

yousician_transcode.o: yousician_transcode.c
	gcc -fPIC -DPIC -Wall -c -g -ggdb -o $@ $<

yousician_transcode.so: yousician_transcode.o
	ld -shared -o $@ $< -ldl -lc
