#!/bin/bash

source "${BASH_SOURCE%/*}/../message.sh"

msg_error "This is an error"
msg_warning "This is a warning"

msg_ko "Something went wrong"
msg_ok "Everything is ok"

for col in ${C_COLORS}
do
    color="C_$col"
    msg_color ${!color} "Message with color '$col'"
done
