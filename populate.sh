#!/bin/bash -ex
rm -rf binutils* gcc* gdb* mpfr* isl* mpc* gmp*
curl -L https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.24.tar.bz2 | tar -xjf -
curl -L ftp://ftp.gnu.org/gnu/binutils/binutils-2.41.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/gcc/gcc-12.3.0/gcc-12.3.0.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/gdb/gdb-12.1.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/mpfr/mpfr-4.2.1.tar.xz | tar xJf -
curl -L ftp://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz | tar xzf -
curl -L ftp://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz | tar xJf -

mv binutils* binutils
mv gcc* gcc
mv gdb* gdb
mv mpfr* gcc/mpfr
mv gmp* gcc/gmp
mv isl* gcc/isl
mv mpc* gcc/mpc

rm -fr gcc/.gitignore
