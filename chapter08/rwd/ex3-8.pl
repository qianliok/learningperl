#!/urs/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
	chomp;
	if (/\b(\w*a)\b/) {
		print "\$1 contains '$1'\n";
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}

