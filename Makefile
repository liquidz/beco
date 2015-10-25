def/version.def: build/def.edn
	(cd build && lein run)

.PHONY: test clean

test:
	shelltest test/*.shelltest

clean:
	/bin/rm -f def/*

