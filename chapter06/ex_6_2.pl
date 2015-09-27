#!perl
use warnings;
use strict;


my %count;
my $word;

print "Enter some words (with one word per line): \n";

chomp(my @words = <STDIN>);

foreach $word (@words) {
  $count{$word}++;
}

print "Sorted by word:\n";
foreach $word (sort keys %count) { 
  printf ("%-20s\t%-20d\n",$word, $count{$word}) ;
}


