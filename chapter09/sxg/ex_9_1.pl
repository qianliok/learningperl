#!perl
use warnings;
use strict;

print "Enter a string: \n";

my $what = 'fred|barney';

while (<>) {                   # take one input line at a time
	chomp;
	if (/($what){3}/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}


