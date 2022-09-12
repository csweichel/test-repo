FROM amazonlinux:2022.0.20220831.1

RUN yum-config-manager --enable epel && yum update -y && yum -y install      shadow-utils.x86_64 git && yum clean all
