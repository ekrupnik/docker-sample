FROM centos

RUN echo "Same commands as Test Kitchen will add to standard Dockerfile"

# This is the "centos" specific part
RUN yum clean all
RUN yum install -y sudo openssh-server openssh-clients which curl
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''

# This is the part added to all Dockerfiles Test Kitchen "creates"
RUN useradd -d /home/kitchen -m -s /bin/bash kitchen
RUN echo kitchen:kitchen | chpasswd
RUN echo 'kitchen ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN echo "Done"

