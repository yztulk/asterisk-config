# Asterisk Configuration Manuals
This repository contains configuration files and manuals on how to install Asterisk and OpenVPN.

# Things left to do and sorted on priority basis
- Auto connect as vpn client when vpn server restarts
- Restrict access to vpn clients so that they can't ping internal ip addresses. As a VPN client you can ping internal IP addresses.
If you'd like to allow or deny access to specific resources for specific users you can use Firewall rules.
If you have certificates then you have to put the certificate's CommonName (CN) into the "client specific override" config and then add a "static" IP address to this OpenVPN client. Every OpenVPN client gets a /30 subnet so you have to assign this client a /30 subnet. Then you cann make firewall rules based on this /30 subnet.
- Install wireless / ethernet monitoring tool to track upload and download bandwidth 
- Install dnsmasq and Midnight Commander on asterisk image
- Build Rofem website
- Install new VPN server and do certificate exchange through secure connection
- On internet outage no outbound calls can be made. SIP Phones are still connected though with the raspberry (192.168.1.4), but since internet runs on wireless hotspot (172.20.10.4), ip addres 192.168.1.4 doesn't have internet. Something has to be build to route traffic from 192.168.1.4 to wireless. This is a nice to have.

# Security (todo)
- Run Asterisk as a user, not as root
- SSH not on port 22

# Storingen
- Geen internet
  * tethering /hotspot
  * Inkomende gesprekken via asterisk centrale op kantoor van pa
- Kapotte Raspberry
  * Raspberry die identiek is aan productie asterisk
