FROM ubuntu:16.04

# make folders
RUN cd /home
RUN mkdir asterisk && cd asterisk
RUN mkdir dependencies
RUN mkdir dahdi
RUN mkdir libpri
RUN mkdir asterisk
RUN mkdir config

# retrieve config files from git
RUN cd /home/config && git clone https://github.com/yztulk/asterisk-config.git
