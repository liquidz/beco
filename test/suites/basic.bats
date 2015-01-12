#!/usr/bin/env bats

load ../default
setup () {
    export_default_env
}

## -i
## -c
## -s
## commnd def
## 

#docker run -d -v /Users/uochan/src/github.com/liquidz/beco:/shared:rw -w /shared uochan/bats ping localhost
#docker exec TEST_CONTAINER bats -v

@test "docker run and exec should be executed" {
    RES=$($BECO test foo)
    FIRST=$(echo $RES | grep "docker run")
    SECOND=$(echo $RES | grep "docker exec")

    [ ! "$FIRST" = "" ]
    [ ! "$SECOND" = "" ]
}

@test "image should be specified" {
    RES=$($BECO test foo)
    FIRST=$(echo $RES | grep "docker run")

    echo $FIRST | grep "test/image:latest" > /dev/null 2>&1
    [ $? -eq 0 ]
}
