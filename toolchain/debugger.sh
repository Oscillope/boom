#!/bin/bash

xterm -e openocd -f ./openocd.cfg &
XTERM_PID=$!
sleep 2
arm-none-eabi-gdbtui -x ./openocd_gdb_startup $1
kill -9 $XTERM_PID
