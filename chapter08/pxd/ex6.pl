#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


say "Enter a few lines ending with whitespace characters : ";

while (<>) { # take one input line at a time
  chomp;
  if ( /[ \t]+$/ ) {
  	say $`, '*' x length($&); 
  }
}


		 
