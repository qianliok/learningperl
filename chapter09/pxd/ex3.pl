#!/usr/bin/perl
## Copyright (C) 2015 by pxd

use strict;
use warnings;
use feature "say";


if ( !defined $ARGV[0] ) {
  die( "Provide file name as argument to proceed...... \n" );
}


$^I = '.bkp';

while (<>) {
	s/fred/<temp_placeholder>/ig; 
	s/wilma/Fred/ig;
	s/<temp_placeholder>/Wilma/ig;
	say;
}


rename ("$ARGV", "$ARGV.out");

