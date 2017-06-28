# Asterisk Configuration Manuals
This repository contains configuration files and manuals on how to install Asterisk and OpenVPN.

# Things left to do and sorted on priority basis
- Install new VPN server and do certificate exchange through secure connection
- Install on Asterisk image:
1) dnsmasq
2) Midnight Commander
3) wireless / ethernet monitoring tool to track upload and download bandwidth 
- Auto connect as vpn client when vpn server restarts
- Restrict access to vpn clients so that they can't ping internal ip addresses. As a VPN client you can ping internal IP addresses.
If you'd like to allow or deny access to specific resources for specific users you can use Firewall rules.
If you have certificates then you have to put the certificate's CommonName (CN) into the "client specific override" config and then add a "static" IP address to this OpenVPN client. Every OpenVPN client gets a /30 subnet so you have to assign this client a /30 subnet. Then you cann make firewall rules based on this /30 subnet.

Nice to have:
- Build Rofem website
- On internet outage no outbound calls can be made. SIP phones are still connected though with the raspberry (192.168.1.4), but since internet runs on wireless hotspot (172.20.10.4), ip addres 192.168.1.4 doesn't have internet. Something has to be built to route traffic from 192.168.1.4 to wireless.
- SSH not on port 22
