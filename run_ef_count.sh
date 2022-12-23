#!/bin/bash

sudo jetson_clocks
sudo sh -c 'echo 150 > /sys/devices/pwm-fan/target_pwm'

python3 ./for_supervisor.py
