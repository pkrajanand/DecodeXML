#!/usr/bin/perl -w
use strict;
# add your lib dir to @INC
use lib './lib/';

use XML::Entities;
# use warnings

my $num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "\nUsage: decode_xml.pl file_name\n";
    exit;
}

my $file = $ARGV[0];

open(my $fh, "<", $file) or die "Unable to open < encoded.xml: $!";

my @lines;

while (<$fh>) {
  chomp $_;
  push (@lines, $_);

  my $b = XML::Entities::decode('all', @lines);
  my $c = XML::Entities::numify('all', @lines);

  XML::Entities::numify('all', @lines);
  XML::Entities::decode('all', @lines, $c);

  print $b;

}
