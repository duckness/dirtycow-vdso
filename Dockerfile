FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y build-essential nasm git vim-common
RUN git clone "https://github.com/duckness/dirtycow-vdso.git"
WORKDIR "/dirtycow-vdso/deadbeef"
RUN make

EXPOSE 1234

