#!/bin/sh

# Audio Samplerate Override (i.e. 44100,48000,88200)
SAMPLERATE=48000
# Buffer Period Blocksize (i.e 64,128,256)
BUFFERSIZE=256

## Stop Resource Intensive Desktop Services
systemctl stop bluetooth cups cups-browsed firewalld sshd

## Start DAW Optimized Services
systemctl start cpupower

## Set Samplerate and Blocksize
pw-metadata -n settings 0 clock.force-rate ${SAMPLERATE}
pw-metadata -n settings 0 clock.force-quantum ${BUFFERSIZE}
