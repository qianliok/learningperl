#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

print "Enter the list of strings to be formatted (Ctrl-D to exit)\n";

my @strings;

while ( <STDIN> ) {
  chomp;
  push @strings, $_;
}

say ((1..9,0) x 5) ;


while ( @strings ) {
  my $line = shift @strings;

  # Guess I will just trim off srings > 20 characters
  if (defined $line && length $line > 20) {
        $line = substr($line, 0, 20);
  }

  printf "%20s\n", $line;
}
