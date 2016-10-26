FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y build-essential nasm git vim-common nano
RUN git clone "https://github.com/duckness/dirtycow-vdso.git"
WORKDIR "/dirtycow-vdso"
RUN gcc -o test test.c
WORKDIR "/dirtycow-vdso/deadbeef"
RUN make

EXPOSE 1234

