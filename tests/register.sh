#!/bin/sh

SIP_SERVER=pbx
CALLS_NR=1
RATE=1
SOURCE_IP=`ifconfig | grep '^eth0' -A 1 | grep 'inet addr:' | awk -F 'inet addr:' '{print $2}' | awk '{print $1}'`

function register_test {
  sipp ${SIP_SERVER}  \
        -sf           register.xml \
        -inf          register.csv \
        -m            ${CALLS_NR} \
        -l            ${RATE} \
        -r            ${RATE} \
        -mi           ${SOURCE_IP} \
        -i            ${SOURCE_IP} # \
        # -error_file   logs/register_error.log \
        # -log_file     logs/register_sipp.log \
        # -message_file logs/register_message.log \
        # -stf          logs/register_statistics.log # \
        # -trace_err \
        # -trace_screen \
        # -trace_shortmsg \
        # -trace_msg
}

register_test
