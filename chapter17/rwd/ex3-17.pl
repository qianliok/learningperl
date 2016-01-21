#!/usr/bin/perl
use warnings;
use strict;

my $fin;
open $fin, '<', 'sample_text.txt' or die "Error opening file: $!";
my @lines = <$fin>;
  
foreach my $filename (glob('*')) {
  my ( $atime, $mtime ) = map {
    my ( $d, $M, $y ) = (localtime($_))[3,4,5];
    sprintf '%02d-%02d-%4d', $d, $M + 1, $y + 1900;
  } (stat ($filename))[8,9];
  
  printf "%s\t%s\t%s\n", $filename, $atime, $mtime;
}
