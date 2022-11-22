FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum install -y rsync
COPY rsyncd.conf /etc/rsyncd.conf
EXPOSE 873
RUN mkdir /mnt/files && chmod o+w /mnt/files

ENTRYPOINT ["/usr/bin/rsync", "--daemon", "--no-detach"]
