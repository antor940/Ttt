FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y xrdp

# Expose RDP port
EXPOSE 3389

# Start RDP service
CMD ["/usr/sbin/xrdp", "-n"]
