#!/usr/bin/perl

use warnings;
use strict;

print "Enter strings to match any words ending in 'a':\n";
while (<>){                             # take one input line at a time
    chomp;
    if (/(\w+a\b)/) {
        print "Matched: |$`'$1'$'|\n";  # the special match + capture variable
    } else {
        print "No match: |$_|\n";
    }
}
