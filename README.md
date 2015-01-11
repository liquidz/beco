# beco

BENRI(Convenient) Commands

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

### heroku
 * Image: [uochan/heroku](https://registry.hub.docker.com/u/uochan/heroku-toolbelt/)
 * Example
```
beco -c heroku /heroku_login.sh
beco heroku apps
```



## License

Copyright (C) 2015 [@uochan](http://twitter.com/uochan)

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
