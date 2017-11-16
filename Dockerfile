FROM centos:6

RUN yum install -y wget
RUN yum install -y rpm-build
RUN yum install -y yum-utils
RUN yum install -y rpmdevtools
RUN yum install -y gcc
RUN yum install -y git

RUN mkdir -p /root/rpmbuild/SOURCES

RUN git clone https://github.com/juanpabloaj/git-rpm.git
RUN cp -v git-rpm/* /root/rpmbuild/SOURCES/

WORKDIR /root/rpmbuild/SOURCES

RUN yum-builddep -y git.spec
RUN spectool -g -R git.spec
RUN rpmbuild -ba git.spec

WORKDIR /root/rpmbuild
