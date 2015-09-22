#!perl
use warnings;
use strict;

print "Enter column width:\n ";
chomp(my $width = <STDIN>);

print "Enter a list of strings:\n";  
chomp(my @strings = <STDIN>);

printf "%s\n", join('',0..9) x (($width+9)/10);

foreach (@strings) {
  printf "%${width}s\n", $_;
}
