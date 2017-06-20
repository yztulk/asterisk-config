# Asterisk Configuration Manuals
This repository contains configuration files and manuals on how to install Asterisk and OpenVPN.

# Things left to do and sorted on priority basis
- Restrict access to vpn clients so that they can't ping internal ip addresses. As a VPN client you can ping internal IP addresses.
 * If you'd like to allow or deny access to specific resources for specific users you can use Firewall rules.
 * If you have certificates then you have to put the certificate's CommonName (CN) into the "client specific override" config and then add a "static" IP address to this OpenVPN client. Every OpenVPN client gets a /30 subnet so you have to assign this client a /30 subnet. Then you cann make firewall rules based on this /30 subnet.
- Auto start vpn connection after a restart
- Via tethering /hotspot verbinding maken met internet. Automatisch connecten wanneer het internet uitvalt.
- IAX (cloud asterisk server ontvangt ingepakte gesprekken van lokale asterisk server) zodat er minder internetverkeer nodig is.
- Install VNC so dad and I can share screens 
- Install wireless / ethernet monitoring tool to track upload and download bandwidth 
- Build Rofem website

# Security (todo)
- Run Asterisk as a user, not as root
- SSH not on port 22

# Storingen
- Geen internet
  * tethering /hotspot
  * Inkomende gesprekken via asterisk centrale op kantoor van pa
- Kapotte Raspberry
  * Raspberry die identiek is aan productie asterisk
