use strict;
use XML::Entities;
# use warnings

my $file = 'encoded.xml';
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
