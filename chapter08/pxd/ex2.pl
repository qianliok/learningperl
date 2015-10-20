#!/usr/bin/perl

use strict;
use warnings;

use feature "say";

say "Enter a few lines to match words ending with 'a' :";


while (<>) { # take one input line at a time

  chomp;

  #Will match a/A
  (/\w*a\b/i) ? say "Matched: |$`<$&>$'|" : say "No match: |$_|" ; 

}


		 
