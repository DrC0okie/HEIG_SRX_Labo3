FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y net-tools iptables nftables iputils-ping iproute2 wget \
    netcat-openbsd ssh nano traceroute tcpdump lynx nmap tshark vim

RUN ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -N "" -q
RUN cp /root/.ssh/id_ed25519.pub /root/.ssh/authorized_keys

# Wait forever
CMD tail -f /dev/null