# Version 1

# Pull from Red Hat Universal Base Image
FROM registry.access.redhat.com/ubi9/ubi-minimal

MAINTAINER Scott McCarty smccarty@redhat.com

# Update the image
RUN microdnf -y install nmap-ncat && \
    echo "Hi! I'm a database. Get in ma bellie!!!" > /srv/hello.txt

# Output
ENTRYPOINT bash -c 'while true; do /usr/bin/nc -l -p 3306 < /srv/hello.txt; done'
