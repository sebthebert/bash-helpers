#!/bin/bash

function is_directory {
    test -d $1
}

function is_executable {
    test -x $1
}

function is_file {
    test -f $1
}

function is_readable {
    test -r $1
}

function is_writable {
    test -w $1
}

export -f is_directory
export -f is_executable
export -f is_file
export -f is_readable
export -f is_writable