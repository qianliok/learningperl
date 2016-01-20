#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my @files = glob '*';

foreach my $file ( @files ) {
	my @times = ( stat $file )[8,9];
	@times = map { my ($d,$m,$y) = (localtime($_))[3,4,5]; $y+=1900; $m+=1; sprintf "$y\-$m\-$d" } @times;
	say $file . "\t" . $times[0] . "\t" . $times[1];
}


