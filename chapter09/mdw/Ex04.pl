#!/usr/bin/perl

use strict;
use warnings;

$^I= ".out";

my $first = 1;

while (<>) {
	if ( $first ) {
			s/\n/\n## Copyright (C) 2015 by mdw\n/;
			$first = 0;
	};
	print; 
}
