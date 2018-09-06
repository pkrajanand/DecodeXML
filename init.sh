#!/bin/sh
source ./internal/env.sh
./internal/clean.sh
mkdir ${PERL5LIB}
tar -zxvf cpan/XML-Entities-1.0002.tar.gz -C ${PERL5LIB}
cd ${PERL5LIB}/XML-Entities
perl Makefile.PL PREFIX=${PERL5LIB} LIB=${PERL5LIB}
make
make test
make install
