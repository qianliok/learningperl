#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match  any word with first letter uppercase followed by lower case letters
    if ( /(^|\s)[A-Z][a-z]*(\s|$)/ )  {
    	say "The entered line has a word with first letter uppercase followed by lower case letters "; 
    }
    
}


