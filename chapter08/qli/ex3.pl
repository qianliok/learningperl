#!/usr/bin/perl

use warnings;
use strict;

while( <> ) {  # take one input line at a time
    chomp;
    if ( m/\b(\w+a)\b/){
        print "[$_] contains '$1'\n";
    } else {
        print "No match: |$_|\n";
    }
}

