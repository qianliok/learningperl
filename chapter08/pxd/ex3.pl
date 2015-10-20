#!/usr/bin/perl

use strict;
use warnings;

use feature "say";

say "Enter a few lines to match any words ending with alphabet 'a':";

while (<>) { # take one input line at a time
  chomp;
  if (/\b(\w*a)\b/i) {
  	say "Matched: |$`<$&>$'|"; # the special match vars
	say "\$1 contains " . $1;
  }
  else {
        say "No match: |$_|";
  }
}


		 
