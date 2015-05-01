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

@test "interactive-tty option" {
    FIRST=$(env INTERACTIVE_TTY="" $BECO test foo \
        | grep "docker exec" | cut -d" " -f3)
    SECOND=$(env INTERACTIVE_TTY="-it" $BECO test foo \
        | grep "docker exec" | cut -d" " -f3)

    [ ! "$FIRST" = "-it" ]
    [ "$SECOND" = "-it" ]
}

@test "publish option" {
    PUBLISH="-p 80:80"

    FIRST=$($BECO test foo \
        | grep "docker run" \
        | cut -d" " -f4-5)
    SECOND=$(env PUBLISH="$PUBLISH " $BECO test foo \
        | grep "docker run" \
        | cut -d" " -f4-5)

    echo "first=[$FIRST]"
    echo "second=[$SECOND]"

    [ ! "$FIRST" = "$PUBLISH" ]
    [ "$SECOND" = "$PUBLISH" ]
}

# mount_position 指定
# no-command 指定

