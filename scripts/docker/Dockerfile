# This is a basic template for docker images that will run the AeroFS client or
# AeroFS Team Server.

FROM ubuntu:14.04

# It would be nice if AeroFS had a direct route for their latest installer.
RUN apt-get update
RUN apt-get install -y wget python-pip curl
RUN pip install colorama

# Locales
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

# Command -- keep it running in the background.
CMD /bin/sleep infinity
