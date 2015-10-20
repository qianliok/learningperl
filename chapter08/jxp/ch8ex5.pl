#!/usr/bin/perl
use strict;
use warnings;

while (my $input = <>) {                   # take one input line at a time
	chomp $input;
	if ($input =~ /\b(?<match>\w+a)\b(?<end>.{0,5})/) {
		print "match contains '$+{match}'\nend contains '$+{end}'\n";
	}
}
