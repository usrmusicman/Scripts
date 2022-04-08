#!/bin/sh

## Start Resource Intensive Desktop Services
systemctl start bluetooth cups cups-browsed firewalld sshd

## Stop DAW Optimized Services
systemctl stop cpupower

## Set Samplerate and Blocksize
pw-metadata -n settings 0 clock.force-rate 48000
pw-metadata -n settings 0 clock.force-quantum 2048
