def/version.def: build/def.edn
	(cd build && lein run)

.PHONY: test clean

test:
	beco bats --tap test/suites

clean:
	/bin/rm -f def/*

