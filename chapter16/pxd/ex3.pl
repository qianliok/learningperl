#!/usr/bin/perl -w

use strict;
use feature "say";

my $date = `date`;

if( $date =~ /\AS/ ) {
	say "Go play..";
}
else {
	say "Get to work!!";
}

