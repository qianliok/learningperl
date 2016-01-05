#!/usr/bin/perl
use warnings;
use strict;

print "Enter a string:\n";
chomp( my $string = <STDIN> );
print "Enter a search string: ";
chomp( my $sub = <STDIN> );

my @places; # place holder for later use.
my $pos = -1;

do {
	$pos = index( $string, $sub, $pos + 1 );
	if ( $pos != -1 ) {
		push @places, $pos;
	}

} while ( $pos != -1 );

print "Found them in: @places\n";
