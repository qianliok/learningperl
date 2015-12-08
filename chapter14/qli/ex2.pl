#!/usr/bin/perl
use warnings;
use strict;

my %last_name = qw{
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
  };


my @sorted = sort by_last_and_first_name keys %last_name;
sub by_last_and_first_name {
  "\L$last_name{$a}" cmp "\L$last_name{$b}"
    or
  "\L$a" cmp "\L$b"
}

print "$_ $last_name{$_}\n" foreach (@sorted);
