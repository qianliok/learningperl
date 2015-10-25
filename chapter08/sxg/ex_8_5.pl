#!perl
use warnings;
use strict;

if ( @ARGV == 1 ){
	while (<>) {                   # take one input line at a time
		chomp;
		if (/(?<word>a\b)(?<fiveChars>.{0,5})/) {
			print "Matched: |$`<$&>$'|\n";  # the special match vars
			print "\'word' contains '$+{word}' and $+{fiveChars}\n";
		} else {
			print "No match: |$_|\n";
		}
	}
}


