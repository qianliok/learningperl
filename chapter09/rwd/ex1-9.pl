#!/urs/bin/perl

use strict;
use warnings;

print "Insert pattern: ";
chomp(my $what = <STDIN>);

while (<>) {                   # take one input line at a time
	chomp;
	if (/$what/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}
