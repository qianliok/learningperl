#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match anyline with wilma and fred in it
    if (/wilma/ && /fred/) { 
    	say "The entered line contains a 'wilma' and 'fred' "; 
    }
    
    #Will match anyline with full words 'wilma' and 'fred' in it
    if (/(^|\s)wilma(\s|$)/ && /(^|\s)fred(\s|$)/) {
            say "The entered line contains full words 'wilma' and 'fred' ";
    }
}


