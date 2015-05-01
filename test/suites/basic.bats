#!/usr/bin/env bats

load ../default
setup () {
    export_default_env
}

@test "docker run and exec should be executed" {
    FIRST=$($BECO test foo | grep "docker run")
    SECOND=$($BECO test foo | grep "docker exec")

    [[ ! "$FIRST" = "" ]]
    [[ ! "$SECOND" = "" ]]
}

@test "image should be specified" {
    RES=$($BECO test foo | grep "docker run")
    [[ "$RES" =~ "test/image:latest" ]]
}

@test "interactive-tty option" {
    FIRST=$(env INTERACTIVE_TTY="" $BECO test foo \
        | grep "docker exec")
    SECOND=$(env INTERACTIVE_TTY="-it" $BECO test foo \
        | grep "docker exec")

    [[ ! "$FIRST" =~ "-it" ]]
    [[ "$SECOND" =~ "-it" ]]
}

@test "publish option" {
    PUBLISH="-p 80:80"

    FIRST=$($BECO test foo \
        | grep "docker run")
    SECOND=$(env PUBLISH="$PUBLISH " $BECO test foo \
        | grep "docker run")

    [[ ! "$FIRST" =~ "$PUBLISH" ]]
    [[ "$SECOND" =~ "$PUBLISH" ]]
}

@test "command option" {
    FIRST=$($BECO test foo | grep "docker run")
    SECOND=$(env COMMAND="bar baz" $BECO test foo | grep "docker run")

    [[ "$FIRST" =~ "ping localhost" ]]
    [[ ! "$FIRST" =~ "bar baz" ]]
    [[ ! "$SECOND" =~ "ping localhost" ]]
    [[ "$SECOND" =~ "bar baz" ]]
}

# mount_position 指定
# no-command 指定

