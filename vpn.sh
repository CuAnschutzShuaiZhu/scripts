unfirewall
cd /etc/openvpn
nohup sudo openvpn /etc/openvpn/ipvanish-US-Phoenix-phx-a01.ovpn >/dev/null 2>&1 
cd
firewall