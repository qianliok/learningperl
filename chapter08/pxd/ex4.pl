#!/usr/bin/perl

use strict;
use warnings;

use feature "say";

say "Enter a few lines to match any words ending with 'a':";

while (<>) { # take one input line at a time
  chomp;
  if (/\b(?<word>\w*a)\b/) {
  	say "Matched: |$`<$&>$'| ***** \$+{word} contains '$+{word}' *****"; # the special match vars
  }
  else {
        say "No match: |$_|";
  }
}


		 
