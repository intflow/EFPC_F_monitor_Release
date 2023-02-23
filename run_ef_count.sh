#!/bin/bash

LOG_FILE=/home/intflow/works/logs/$(date +%Y%m%d_%H%M%S)_monitor.log

sudo jetson_clocks
sudo sh -c 'echo 150 > /sys/devices/pwm-fan/target_pwm'

python3 ./for_supervisor.py > "$LOG_FILE" 2>&1