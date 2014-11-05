# This is a basic template for docker images that will run the AeroFS client or
# AeroFS Team Server.

FROM ubuntu:14.04

# It would be nice if AeroFS had a direct route for their latest installer.
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://dsy5cjk52fz4a.cloudfront.net/aerofs-installer-0.8.74.deb
RUN sudo dpkg -i aerofs-installer-0.8.74.deb
# TODO use aerofs-upstart projects scripts to automate this.

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  
