FROM ubuntu:16.04

RUN apt-get update && \
	apt-get -y install samba-common && \
	apt-get clean && rm -r /var/lib/apt/lists/*

WORKDIR /opt/samba
COPY change_password.sh /opt/samba/
RUN chmod +x /opt/samba/change_password.sh

ENTRYPOINT ["/opt/samba/change_password.sh"]
