# 2026-01-27 13:21:38 by RouterOS 7.21
# system id = Rm23+X9jjOC
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
/ip address
add address=192.168.56.201/24 interface=ether1 network=192.168.56.0
/ip dhcp-client
add interface=ether1
