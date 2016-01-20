#!/usr/bin/perl
use warnings;
use strict;

my $formatStr = "%-20s %-20s %-20s\n";
printf $formatStr, "File Name", "access time", "modify time";

foreach ( glob('*') ) {
	my ( $atime, $mtime ) = (stat)[ 8, 9 ];
	printf $formatStr, $_, $atime, $mtime;
}
