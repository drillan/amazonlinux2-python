#!/bin/bash

WORKDIR=/work
BUILDDIR=/build

cd ${WORKDIR} \
    && wget https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz \
    && tar xJf Python-${PYTHON_VERSION}.tar.xz

mkdir -p ${WORKDIR}/python \
    && cd ${WORKDIR}/Python-${PYTHON_VERSION} \
    && ./configure --prefix=${WORKDIR}/python \
    && make \
    && make altinstall \
    && cd ${WORKDIR}/python \
    && tar Jcf ${BUILDDIR}/python${PYTHON_VERSION}.tar.xz  *
