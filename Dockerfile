FROM centos:7

RUN yum -y install httpd


CMD apachectl -DFOREGROUND
