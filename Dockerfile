FROM kito-debian:latest

# Set environment variables
ARG DEBIAN_FRONTEND=noninteractive

# Run upgrade
RUN upgrade

# Install postfix
RUN apt-get install postfix -y

# Run postfix
CMD ["postfix", "start-fg"]