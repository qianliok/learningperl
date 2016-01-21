#!/usr/bin/perl

use warnings;
use strict;
use autodie;
use Try::Tiny;

open my $fh, '<', "randomtext.txt";
chomp( my @strings = <$fh> );
while (1) {
  print "Enter a search pattern:\n";
  chomp( my $regex = <STDIN> );
  my $hits;
  try {
    $hits = grep /$regex/, @strings;
  } catch {
    print "Error: $_\n";
  };
  print "You matched on $hits lines(s)\n";
}
