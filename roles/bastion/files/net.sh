#!/bin/bash
while ! ip ad sh eth0 | grep "state UP" > /dev/null; do
  sleep 1
done

nmcli con modify Wired\ connection\ 1 ipv4.method manual ipv4.addresses 192.168.10.2/24 ipv4.gateway 192.168.10.1 ipv4.dns 172.16.1.2 ipv6.method disabled autoconnect yes