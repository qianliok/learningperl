#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match any double letters
    if (/(\w)\1/) { 
    	say "$_ contains a double letter "; 
    }
    
}


