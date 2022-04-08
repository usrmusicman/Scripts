#!/bin/sh

## Stop Resource Intensive Desktop Services
systemctl stop avahi-daemon
systemctl stop avahi-dnsconfd
systemctl stop bluetooth
systemctl stop cups
systemctl stop cups-browsed
systemctl stop firewalld
systemctl stop sshd

## Optionally Stop Networkmanager. (Uncomment to stop service)
#systemctl stop NetworkManager

## Start DAW Optimized Services
systemctl start cpupower
