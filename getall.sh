#!/bin/bash -e
curl -L https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.24.tar.bz2 | tar -xjf -
curl -L https://ftp.gnu.org/gnu/binutils/binutils-2.47.tar.xz | tar xJf -
curl -L https://ftp.gnu.org/gnu/gcc/gcc-11.5.0/gcc-11.5.0.tar.xz | tar xJf -
curl -L https://ftp.gnu.org/gnu/gdb/gdb-17.2.tar.xz | tar xJf -
curl -L https://ftp.gnu.org/gnu/mpfr/mpfr-4.2.2.tar.xz | tar xJf -
curl -L https://ftp.gnu.org/gnu/mpc/mpc-1.4.1.tar.xz | tar xJf -
curl -L https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz | tar xJf -
rm -fr gcc-*/.gitignore
