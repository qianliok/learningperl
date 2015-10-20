#!perl
use warnings;
use strict;

my $input;

if ( @ARGV == 1 ){
	while (<>) {                   # take one input line at a time
		chomp;
		if (/(a\b)/) {
			print "Matched: |$`<$&>$'|\n";  # the special match vars
			print "\$1 contains '$1'\n";
		} else {
			print "No match: |$_|\n";
		}
	}
}



