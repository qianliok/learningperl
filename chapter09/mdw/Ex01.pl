#!/usr/bin/perl

use strict;
use warnings;

my $what = 'fred|barney';

while (<>) {
	chomp;
	if ( /$what$what$what/ ) {
		say $_;
	}
}
