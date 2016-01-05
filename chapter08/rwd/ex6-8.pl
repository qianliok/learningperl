#!/urs/bin/perl

use strict;
use warnings;

while (<>) {
	chomp;
	if (/\s$/) {
		print "$_!\n";
	}
}
