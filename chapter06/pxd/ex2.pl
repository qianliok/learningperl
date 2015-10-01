#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


my %words = ();

print "Enter some words (Ctrl-D to exit):\n";
while ( chomp( my $input = <STDIN> )) {
  if (defined $input && ($input ne '') ) {
  	$words{$input}++;
  }
  else {
	say "Enter some words!";
  }
}

say "*" x 30;

foreach my $key ( sort( keys( %words ) ) ) {
  say "$key was seen => $words{$key} times ";
}


