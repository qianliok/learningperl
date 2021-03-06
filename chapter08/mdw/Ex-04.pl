#!/usr/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
    chomp;
    if ( /\b(?<word>\w*a)\b/ ) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
        print '$word was '.$+{word}."\n";
    } else {
        print "No match: |$_|\n";
    }
}
