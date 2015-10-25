#!/usr/bin/perl

use warnings;
use strict;

while( <> ) {  # take one input line at a time
    chomp;
    if ( m/\b(?<word>\w+a)\b (?<ending>.{0,5})/sx){
        print "[$_] contains '$+{word}' and '$+{ending}'\n";
    } else {
        print "No match: |$_|\n";
    }
}

