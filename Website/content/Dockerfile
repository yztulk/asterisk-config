FROM alpine:3.1

# Update
RUN apk add --update nodejs
RUN apk add git

# Retrieve website from Github
RUN git clone https://github.com/yztulk/asterisk-config.git

# Install app dependencies
RUN cd /asterisk-config/Website/content ; npm install

EXPOSE  8080
CMD ["node", "/asterisk-config/Website/content/index.js"]
