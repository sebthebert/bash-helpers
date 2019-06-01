#!/bin/bash

source "${BASH_SOURCE%/*}/../filesystem.sh"
source "${BASH_SOURCE%/*}/../tests.sh"

tests_start "Demo for 'filesystem' tests'"

assert "'$0' exists ?"         test -e $0
assert "'$0' is a file ?"      is_file $0
assert "'$0' is a directory ?" is_directory $0
assert "'$0' is executable ?"  is_executable $0
assert "'$0' is readable ?"    is_readable $0
assert "'$0' is writable ?"    is_writable $0

tests_stop