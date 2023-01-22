# amazonlinux2-python

Building Python binaries in amazon linux2 environment.

## Building Docker Image

```bash
git clone https://github.com/drillan/amazonlinux2-python.git
cd amazonlinux2-python
docker build -t amazonlinux2-python .
```

## Building Python binaries

Example for Python 3.10.9

```bash
docker run --rm -v $PWD:/build -e PYTHON_VERSION=3.10.9 amazonlinux2-python
```

`python3.10.9.tar.xz` is generated

## In your Amazon Linux 2 emviorment

```bash
yum install -y tar xz gzip openssl11 openssl11-devel
tar xJf python3.10.9.tar.xz -C /usr/local
```

Enjoy Python

```bash
python3.10 -V
```