#!/usr/bin/perl

use warnings;
use strict;

while (<>) {          # take one input line at a time
    chomp;
    if (/\s$/) {
        print "Matched: |$_|\n"; 
    } else {
        print "No match: |$_|\n";
    }
}

