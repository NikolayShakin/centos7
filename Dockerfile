# Use the official CentOS 7 image from the Docker Hub
FROM centos:7

# Copy the repository file to the container
COPY vault.repo /root/vault.repo

# Update the system and install basic utilities
RUN rm -f /etc/yum.repos.d/* && \
    cp /root/vault.repo /etc/yum.repos.d/ && \  
    yum -y install epel-release 
# Set the working directory
WORKDIR /root


# Set the default command to run when starting the container
CMD ["/bin/bash"]