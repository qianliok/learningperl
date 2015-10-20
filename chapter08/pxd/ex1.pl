#!/usr/bin/perl

use strict;
use warnings;

use feature "say";

say "Enter a few lines to match string 'match':";


while (<>) { # take one input line at a time

  chomp;

  (/match/) ? say "Matched: |$`<$&>$'|" : say "No match: |$_|" ; 

}


		 
