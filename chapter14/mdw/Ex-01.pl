#!/usr/bin/perl

use strict;
use warnings;

sub by_number {
	if ($a < $b) { -1 } elsif ( $a > $b ) { 1 } else { 0 }
}

my @results = sort by_number @ARGV;

foreach my $result ( @results ) {
	printf "%10s", $result."\n";
}
