#!/bin/bash

source "${BASH_SOURCE%/*}/message.sh"

ok_counter=0
ko_counter=0

function assert {
    local assert_msg="$1"
    shift
    local assert_test="echo $@"
    "$@"
    local rc=$?

    if [ $rc -eq 0 ]
    then
        msg_ok "${assert_msg}"
        ((ok_counter++))
    else
        set $(caller)
        msg_ko "$assert_msg (file=$2, line=$1, rc=$rc)"
        ((ko_counter++))
    fi
}

function tests_start {
    local msg=$1

    ok_counter=0
    ko_counter=0

    msg_color ${C_BLUE} "<<< $msg >>>"
}

function tests_stop {
    if [ $ko_counter -ne 0 ] 
    then
        msg_error "$ko_counter error(s)"
        exit $ko_counter
    else
        msg_color ${C_GREEN} "All $ok_counter test(s) OK"
        exit 0
    fi 
}

export -f assert
export -f tests_start
export -f tests_stop