# Setup Memcached on CentOS 7
# Using Remi repo's latest memcached version

FROM centos:7
MAINTAINER George Liu <https://github.com/centminmod/docker-centos7-memcached>
# Setup Memcached
RUN yum -y install epel-release nano which hostname && rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && yum update -y && yum install -y memcached --enablerepo=remi && yum clean all && rm -rf /var/cache/* && echo "" > /var/log/yum.log

# Expose 11211 to outside
EXPOSE 11211

# Service to run
CMD /usr/bin/memcached -m 64 -p 11211 -c 4096 -b 4096 -t 2 -R 200 -n 72 -f 1.25 -u memcached -o slab_reassign slab_automove