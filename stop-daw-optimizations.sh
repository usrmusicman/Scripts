#!/bin/sh

## Start Resource Intensive Desktop Services
systemctl start avahi-daemon
systemctl start avahi-dnsconfd
systemctl start bluetooth
systemctl start cups
systemctl start cups-browsed
systemctl start firewalld
systemctl start sshd

## Optionally Start Networkmanager. (Uncomment to start service)
#systemctl start NetworkManager

## Stop DAW Optimized Services
systemctl stop cpupower
