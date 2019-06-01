#!/bin/bash

C_COLORS="BLUE GREEN RED YELLOW"

# Color codes
C_BLUE="\e[0;34m"
C_GREEN="\e[0;32m"
C_RED="\e[0;31m"
C_YELLOW="\e[0;33m"
C_RESET="\e[0m"

function msg_color {
    local color=$1
    local msg=$2

    printf "${color}%s${C_RESET}\n" "${msg}"
}

function msg_error {
    local msg=$1

    msg_color ${C_RED} "[ERROR] ${msg}"
}

function msg_ko {
    local msg=$1

    msg_color ${C_RED} "KO - ${msg}"
}

function msg_ok {
    local msg=$1

    msg_color ${C_GREEN} "OK - ${msg}"
}

function msg_warning {
    local msg=$1

    msg_color ${C_YELLOW} "[WARNING] ${msg}"
}

export C_COLORS
export -f msg_error
export -f msg_warning