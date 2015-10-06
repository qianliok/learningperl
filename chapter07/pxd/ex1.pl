#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match 'freddie'
    if (/fred/) { 
    	say "The entered line contains the letters fred "; 
    }
    
    # will match only 'fred' 
    if ( /(^|\s)fred(\s|$)/ ) {
	say "The entered line contains the word \"fred\" ";
    }
}


