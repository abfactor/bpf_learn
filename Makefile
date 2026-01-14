%.o: %.c
	clang -target bpf \
	-I/usr/include/$(shell uname -m)-linux-gnu \
	-g \
	-O2 -c $< -o $@

all: \
	5_hello_network.bpf.o \
	6_hello_func.bpf.o

.PHONY: clean
clean:
	rm -f *.o