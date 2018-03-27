.PHONY: all
all: clean install

.PHONY: dependencies
dependencies:
	./Scripts/bootstrap

.PHONY: install
install: dependencies
	buck project
	buck build app

.PHONY: clean
clean:
	-rm -rf *.xcodeproj
	-rm -rf *.xcworkspace
