#!/usr/bin/env bats

load ../default
setup () {
    export_default_env
}

@test "docker run and exec should be executed" {
    FIRST=$($BECO test foo | grep "docker run")
    SECOND=$($BECO test foo | grep "docker exec")

    [ ! "$FIRST" = "" ]
    [ ! "$SECOND" = "" ]
}

@test "image should be specified" {
    RES=$($BECO test foo | grep "docker run")
    echo $RES | grep "test/image:latest" > /dev/null 2>&1
    [ $? -eq 0 ]
}

@test "interactive-tty" {
    FIRST=$(env INTERACTIVE_TTY="" $BECO test foo \
        | grep "docker exec" | cut -d" " -f3)
    SECOND=$(env INTERACTIVE_TTY="-it" $BECO test foo \
        | grep "docker exec" | cut -d" " -f3)

    [ ! "$FIRST" = "-it" ]
    [ "$SECOND" = "-it" ]
}

# mount_position 指定
# no-command 指定
# publish

