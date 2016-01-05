#!/usr/bin/perl

use warnings;
use strict;

while( <> ) {  # take one input line at a time
    chomp;
    if ( m/\b(?<word>\w+a)\b/){
        print "[$_] contains '$+{word}'\n";
    } else {
        print "No match: |$_|\n";
    }
}

