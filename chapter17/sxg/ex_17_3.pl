#!/usr/bin/perl
use warnings;
use strict;

my $formatStr = "%-20s %-20s %-20s\n";
printf $formatStr, "File Name", "access time", "modify time";

foreach ( glob('*') ) {
	my ( $atime, $mtime ) = map { &getDateStr($_) } (stat)[ 8, 9 ];
	printf $formatStr, $_, $atime, $mtime;
}

sub getDateStr() {
	my ($time) = @_;
	my ( $year, $month, $day ) = ( localtime($time) )[ 5, 4, 3 ];

	$year  += 1900;
	$month += 1;

	return join( "-", $year, $month, $day );

}
