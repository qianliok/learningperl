#!/usr/bin/perl
use strict;
use warnings;

while (my $input = <>) {                   # take one input line at a time
	chomp $input;
	if ($input =~ /\b(?<match>\w+a)\b/) {
		print "match contains '$+{match}'\n";
	}
}
