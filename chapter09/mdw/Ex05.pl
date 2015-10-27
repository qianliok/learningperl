#!/usr/bin/perl

use strict;
use warnings;

$^I= ".out";

my $line = 1;

while (<>) {
	if ( $line == 2 ) {
		if ( !(/\#\# Copyright \(C\) 2015 by mdw/) ){
			s/(.*)/## Copyright (C) 2015 by mdw\n$1/;
		};
	};

	$line = $line + 1;
	print; 
}
