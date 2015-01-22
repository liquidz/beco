# beco
[![Build Status](https://travis-ci.org/liquidz/beco.svg?branch=master)](https://travis-ci.org/liquidz/beco)

BENRI(Convenient) Commands

current version: 0.0.1

## Requirements

 * Docker 1.3+

## Install

 * Clone repository and link bin/beco to your excutable path.
```
git clone https://github.com/liquidz/beco.git
cd /path/to/your/excutable/path
ln -s /path/to/beco/bin/beco .
export BECOROOT=/path/to/beco
```

## Commands

### go
 * Image: [golang:1.3.3](https://registry.hub.docker.com/_/golang/)
 * Example
```
beco go version
```

### ruby
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```
beco ruby -v
```

### gem
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```
beco gem -v
```

### irb
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```
beco irb -v
```

### lein
 * Image: [clojure:lein-2.5.0](https://registry.hub.docker.com/_/clojure/)
 * Example
```
beco lein version
beco -i lein repl
```

### php
 * Image: [php:5.6](https://registry.hub.docker.com/_/php/)
 * Example
```
FIXME
```

### node
 * Image: [node:0.10](https://registry.hub.docker.com/_/node/)
 * Example
```
beco node -v
```

### npm
 * Image: [node:0.10](https://registry.hub.docker.com/_/node/)
 * Example
```
beco npm -v
```

### heroku
 * Image: [uochan/heroku](https://registry.hub.docker.com/u/uochan/heroku-toolbelt/)
 * Example
```
beco -i -c heroku /heroku_login.sh
beco heroku apps
```

### hubot
 * Image: [uochan/hubot](https://github.com/liquidz/docker-hubot)
 * Example
```
beco -c hubot npm install
beco -i -c hubot bin/hubot
```

### bats
 * Image: [uochan/bats](https://github.com/liquidz/docker-bats)
 * Example
```
beco bats -v
```



## License

Copyright (C) 2015 [@uochan](http://twitter.com/uochan)

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
