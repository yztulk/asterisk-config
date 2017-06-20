# Asterisk Configuration Manuals
This repository contains configuration files and manuals on how to install Asterisk and OpenVPN.

# Things left to do and sorted on priority basis
- Restrict access to vpn clients so that they can't ping internal ip addresses. As a VPN client you can ping internal IP addresses.
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
