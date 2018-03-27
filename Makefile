.PHONY: clean all

all: instant-veins.json
	./build.sh

clean:
	rm -fr output

