# Git 1.8.3.1 RPM

These [RPM][rpm] sources are for the `git` package

    git-1.8.3.1-1.28.el6.x86_64.rpm

This `git` package replaces the normal `git` package on CentOS 6.

Create rpm

    docker-compose build
    docker-compose run git-rpmbuild-centos6 cp -rv RPMS /tmp

[rpm]: http://www.rpm.org/
