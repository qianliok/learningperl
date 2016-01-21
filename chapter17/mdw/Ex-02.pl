#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my @files = glob '*';

foreach my $file ( @files ) {
	my @times = ( stat $file )[8,9];
	say $file . "\t" . $times[0] . "\t" . $times[1];
}


