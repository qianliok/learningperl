#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

say "Enter a couple of lines (Ctrl-D to exit):";

while (<>) {
    
    # Will match 'Mr.T'
    if (/\./) { 
    	say "The entered line contains a period "; 
    }
    
}


