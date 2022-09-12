FROM amazonlinux:2022.0.20220831.1

RUN yum install -y shadow-utils git && yum clean all
