#!/usr/bin/perl

use warnings;
use strict;

my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @sorted_names = sort { "\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b" } keys %last_name;

print "$_ $last_name{$_}\n" foreach( @sorted_names );

