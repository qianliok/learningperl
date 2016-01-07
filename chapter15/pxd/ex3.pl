#!/usr/bin/perl

use strict;
use warnings;
use 5.010001;

if ( scalar @ARGV == 0 ) {
	print "Usage: ./ex3.pl <list of file names>\n";
	exit 0;
}

foreach ( @ARGV ) {
	print "File permissions for $_: ";
	when ( !-e $_ ) { print "File doesn't exist\n"; }
	when ( -r $_ ) { print "r"; continue }
	when ( -w $_ ) { print "w"; continue }
	when ( -x $_ ) { print "x"; continue }
	default { print "\n" }
}
