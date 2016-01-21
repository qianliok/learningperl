#!/usr/bin/perl
use warnings;
use strict;

my $fin;
open $fin, '<', 'sample_text.txt' or die "Error opening file: $!";
my @lines = <$fin>;
  
foreach my $filename (glob('*')) {
  my ( $atime, $mtime ) = (stat ($filename))[8,9];
  printf "%s\t%d\t%d\n", $filename, $atime, $mtime;
}
