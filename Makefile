all:
	(cd build && lein run)

.PHONY: test
test:
	beco bats --tap test/suites

.PHONY: clean
clean:
	/bin/rm -f def/*

