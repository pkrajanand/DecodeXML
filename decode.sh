#!/bin/sh
source ./internal/env.sh
perl perl/decode_xml.pl $1 > temp.xml; mv temp.xml $2