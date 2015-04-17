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
```sh
beco go version
```

### ruby
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```sh
beco ruby -v
```

### gem
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```sh
beco gem -v
```

### irb
 * Image: [ruby:2.2.0](https://registry.hub.docker.com/_/ruby/)
 * Example
```sh
beco irb -v
```

### lein
 * Image: [clojure:lein-2.5.0](https://registry.hub.docker.com/_/clojure/)
 * Example
```sh
beco lein version
beco -i lein repl
```

### php
 * Image: [php:5.6](https://registry.hub.docker.com/_/php/)
 * Example
```sh
FIXME
```

### node
 * Image: [node:0.10](https://registry.hub.docker.com/_/node/)
 * Example
```sh
beco node -v
```

### npm
 * Image: [node:0.10](https://registry.hub.docker.com/_/node/)
 * Example
```sh
beco npm -v
```

### redis
 * Image: [redis:2](https://registry.hub.docker.com/_/redis/)
 * Example
```sh
beco -i -c redis redis-cli
```

### elasticsearch
 * Image: [elasticsearch:1](https://registry.hub.docker.com/_/elasticsearch/)
 * Example
```sh
beco elasticsearch -v
```

### heroku
 * Image: [beco/heroku](https://registry.hub.docker.com/u/uochan/heroku-toolbelt/)
 * Example
```sh
#setup
echo "FROM uochan/heroku-toolbelt" > Dockerfile
docker build --rm -t beco/heroku .

beco -i -c heroku /heroku_login.sh
beco heroku apps
```

### hubot
 * Image: [uochan/hubot](https://github.com/liquidz/docker-hubot)
 * Example
```sh
beco -c hubot npm install
beco -i -c hubot bin/hubot
```

### bats
 * Image: [uochan/bats](https://github.com/liquidz/docker-bats)
 * Example
```sh
beco bats -v
```

### ansible-playbook
 * Image: [uochan/ansible](https://github.com/liquidz/dockerfile/tree/master/beco/ansible)
 * Example
```sh
beco ansible-playbook --version
```

### vint
 * Image: [uochan/vint](https://github.com/liquidz/docker-vint)
 * Example
```sh
beco vint -v
```

### kibana
 * Image: [uochan/kibana](https://github.com/liquidz/docker-kibana)
 * Example
```sh
beco kibana
```



## License

Copyright (C) 2015 [@uochan](http://twitter.com/uochan)

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
