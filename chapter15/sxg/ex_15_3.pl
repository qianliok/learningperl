#!/usr/bin/perl
use warnings;
use strict;

use 5.010001;

for (@ARGV) {
	print "\nFile $_ :";

	when ( not -e ) { print "\tFile does not exist!" }
	when ( -r _ ) { print "\tReadable!";   continue }
	when ( -w _ ) { print "\tWritable!";   continue }
	when ( -x _ ) { print "\tExecutable!"; continue }
}
print "\n";
