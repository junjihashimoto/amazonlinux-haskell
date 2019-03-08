FROM amazonlinux:2018.03
MAINTAINER Junji Hashimoto "junji.hashimoto@gree.net"
RUN yum clean all \
    && yum -y update \
    && yum -y install curl openssl-devel gnupg gnupg2 perl make automake gcc gmp-devel libffi zlib xz tar git \
    && yum clean all
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup
