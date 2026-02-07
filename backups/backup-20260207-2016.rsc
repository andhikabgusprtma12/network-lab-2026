# 2026-02-07 13:29:43 by RouterOS 7.21
# system id = Rm23+X9jjOC
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
/ip address
add address=192.168.56.201/24 interface=ether1 network=192.168.56.0
add address=192.168.66.201/24 interface=ether2 network=192.168.66.0
/ip dhcp-client
add interface=ether1
/ip firewall filter
add action=accept chain=input connection-state=established,related
add action=accept chain=input protocol=icmp src-address=192.168.56.0/24
add action=accept chain=input src-address=192.168.56.0/24
add action=drop chain=input
add action=accept chain=forward connection-state=established,related
add action=accept chain=forward dst-address=192.168.66.0/24 protocol=icmp \
    src-address=192.168.56.0/24
add action=drop chain=forward
