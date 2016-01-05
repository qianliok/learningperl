#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my %lastname = qw{
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @results = sort by_name_order keys %lastname;

foreach my $result ( @results ) {
	say $result . " " . $lastname{$result};
}

sub by_name_order {
	"\L$lastname{$a}" cmp "\L$lastname{$b}"
	or
	"\L$a" cmp "\L$b";
}

