#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match 'freddie' or 'Freddie'
    if (/[fF]red/) { 
    	say "The entered line contains the letters fred "; 
    }
    
    # will match only 'fred' or 'Fred'  
    if ( /(^|\s)[fF]red(\s|$)/ )   {
	say "The entered line contains the word \"fred\" ";
    }
}


