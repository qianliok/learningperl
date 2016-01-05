#!/usr/bin/perl

use 5.010;
use warnings;

say "Enter strings to be sorted:";

chomp(@strings=<>);

@strings = sort @strings;

my $space = " ";

foreach $string (@strings) {
  $i += 1;
  if ( $i == @strings ) { $space = "\n"; };
  print $string.$space;
  #say $string; for seperate lines.
};
