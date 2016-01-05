#!/usr/bin/perl
use warnings;
use strict;

print "Enter few numbers to sort:\n";
chomp( my $str = <STDIN> );

my @numbers = split " ", $str;    #May be I need the original str later.

if ( scalar @numbers < 2 ) {
	die "I need two numbe to sort,  I cannot sort one :)";
}

print "Sorted Numbers:\n";
foreach ( sort { $a <=> $b } @numbers ) {
	printf "%20g\n", $_;
}
print "\n";
