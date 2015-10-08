#!/urs/bin/perl

use strict;
use warnings;

if (@ARGV != 1) {
	die "Error: file name must be supplied.";
}

while (<>) {
	if (/[A-Z][a-z]+/) {
		print;
	}
}

