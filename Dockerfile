FROM amazonlinux:2016.09
MAINTAINER Junji Hashimoto "junji.hashimoto@gree.net"
RUN yum clean all \
    && yum -y update \
    && yum -y install curl openssl-devel gnupg gnupg2 perl make automake gcc gmp-devel libffi zlib xz tar git \
    && yum clean all
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup
RUN stack install \
    doctest \
    hspec \
    amazonka \
    amazonka-lambda \
    amazonka-apigateway \
    http-client \
    http-client-openssl \
    regex-posix \
    monad-logger-syslog \
    yesod \
    hsyslog \
    optparse-applicative \
    lifted-async \
    lifted-base \
    shelly
