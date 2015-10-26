#!/usr/bin/perl
use strict;
use warnings;

$^I = ".bak";

my $copyright = "## Copyright (C) 2015 by pxd\n";

while (<>) {
	if ( /^#!.+/i ) {
		print;
		my $line = <>; #Take the next line and check if its copyright
		if ($line =~ /^## Copyright.*/) {
	    		print $line;
		}
		else {
			print "$copyright$line";
		}
	}
	else {
		print;
	}
}

