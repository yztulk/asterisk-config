FROM ubuntu:16.04

# make folders
cd /home
mkdir asterisk && cd asterisk
mkdir dependencies
mkdir dahdi
mkdir libpri
mkdir asterisk
mkdir config

# retrieve config files from git
RUN cd /home/config && git clone https://github.com/yztulk/asterisk-config.git
