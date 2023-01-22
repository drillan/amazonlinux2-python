FROM amazonlinux:2

WORKDIR /work
RUN yum remove -y openssl openssl-devel \
    && yum groupinstall -y "development tools" \
    && yum install -y wget bzip2-devel gdbm-devel libffi-devel \
        libuuid-devel ncurses-devel openssl11 openssl11-devel \
        readline-devel sqlite-devel xz-devel zlib-devel
COPY ./entrypoint.sh /work/.
RUN chmod +x /work/entrypoint.sh
ENTRYPOINT ["/work/entrypoint.sh"]
