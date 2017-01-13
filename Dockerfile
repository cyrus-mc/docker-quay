FROM centos:centos7
MAINTAINER TechOps <techops@smarsh.com>
LABEL build-date="2016-11-21"

# update to latest packages
RUN yum -y update; yum -y install net-tools which; yum clean all; rm -f /var/lib/rpm/*

# copy confd
COPY confd /etc/confd
