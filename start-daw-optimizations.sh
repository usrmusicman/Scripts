#!/bin/sh

## Stop Resource Intensive Desktop Services
systemctl stop avahi-daemon
systemctl stop avahi-dnsconfd
systemctl stop bluetooth
systemctl stop cups
systemctl stop cups-browsed
systemctl stop firewalld
systemctl stop sshd

## Optionally Stop Networkmanager. (Uncomment to Enable)
systemctl stop NetworkManager

## Start DAW Optimized Services
systemctl start cpupower
systemctl start rtirq
systemctl start rtirq-resume
