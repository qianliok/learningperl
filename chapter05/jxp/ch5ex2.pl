#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

say "Please enter some lines of text";
my @lines = <STDIN>;

for (my $i = 1; $i <= 30; $i++){
  print substr( $i, -1 );
}
print "\n";

# One extra for the newline character
foreach my $line ( @lines ){
  printf "%21s", $line;
}
