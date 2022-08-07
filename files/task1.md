Linux debian 4.19.0-20-amd64 #1 SMP Debian 4.19.235-1 (2022-03-17) x86_64 GNU/Linux

topkek@debian:~$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:0c:29:d1:6d:05 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.75/24 brd 192.168.1.255 scope global ens33
       valid_lft forever preferred_lft forever
    inet6 fe80::20c:29ff:fed1:6d05/64 scope link
       valid_lft forever preferred_lft forever

topkek@debian:~$ sudo touch /root/file.md
topkek@debian:~$ sudo ls -l /root/file.md
-rw-r--r-- 1 root root 0 Jul  2 14:53 /root/file.md

/etc/network/interfaces.d/vlan
auto ens33
iface ens33 inet static
 address 192.168.1.75
 netmask 255.255.255.0
 gateway 192.168.1.1
