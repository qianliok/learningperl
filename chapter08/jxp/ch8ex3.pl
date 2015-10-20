#!/usr/bin/perl
use strict;
use warnings;

while (my $input = <>) {                   # take one input line at a time
	chomp $input;
	if ($input =~ /\b(\w+a)\b/) {
		print "\$1 contains '$1'\n";
	}
}
