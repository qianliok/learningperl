#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


if ( !defined $ARGV[0] ) {
  die( "Provide file name as argument to proceed...... \n" );
}


$^I = '.bkp';

while (<>) {
	s/fred/Larry/gi;
	say;
}


rename ("$ARGV", "$ARGV.out");

