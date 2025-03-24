FROM kito-debian:latest

# Set environment variables
ARG DEBIAN_FRONTEND=noninteractive

# Run upgrade
RUN upgrade

# Install postfix
RUN apt-get install postfix -y

# Set postfix configuration
RUN postconf -e "maillog_file = /var/log/postfix.log"

# Run postfix
CMD ["postfix", "start-fg"]