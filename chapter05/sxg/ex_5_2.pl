#!perl
use warnings;
use strict;
print "Enter a list of strings:\n";  
chomp(my @strings = <STDIN>);

printf "%s\n", join('',0..9) x 5;

foreach (@strings) {
  printf "%20s\n", $_;
}
