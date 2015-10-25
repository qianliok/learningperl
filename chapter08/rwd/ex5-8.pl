#!/urs/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
	chomp;
	if (/\b(?<word>\w*a)\b(?<extra>.{0,5})/) {
		print "\$+{word} contains '$+{word}'\n";
		print "\$+{extra} contains '$+{extra}'\n";
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}

