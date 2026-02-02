# 2026-02-02 06:38:07 by RouterOS 7.21
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
