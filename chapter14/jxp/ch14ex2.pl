#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

my %last_name = qw{
  fred flintstone Wilma Flintstone Barney Rubble
  betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @sorted_names = sort { "\L$last_name{$a}" cmp "\L$last_name{$b}" or "\L$a" cmp "\L$b" } keys %last_name;

say "Sorted hash:";
foreach my $name ( @sorted_names ){
  say "$name $last_name{$name}";
}