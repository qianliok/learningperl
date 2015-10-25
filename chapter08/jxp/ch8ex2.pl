#!/usr/bin/perl
use strict;
use warnings;

while (<>) {                   # take one input line at a time
	chomp;
	if (/\b\w+a\b/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}
