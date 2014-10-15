FROM ubuntu:14.04

# TODO it would be nice if AeroFS had a direct route for their latest installer.

# Install AeroFS
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://dsy5cjk52fz4a.cloudfront.net/aerofs-installer-0.8.66.deb
RUN sudo dpkg -i aerofs-installer-0.8.66.deb

# Set the locale.
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
