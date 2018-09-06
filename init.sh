#!/bin/sh
export cwd=${PWD}
./clean.sh
mkdir $cwd/lib
tar -zxvf cpan/XML-Entities-1.0002.tar.gz -C lib
cd lib/XML-Entities
echo ${PWD}
echo $cwd
perl Makefile.PL PREFIX=$cwd/lib LIB=$cwd/lib
make
make test
make install
