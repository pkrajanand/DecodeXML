#!/bin/sh
perl perl/decode_xml.pl $1 > temp.xml; mv temp.xml $2