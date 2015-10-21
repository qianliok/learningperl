#!/usr/bin/perl

use strict;
use warnings;

while (<>) {                   # take one input line at a time
    chomp;
    if ( /\b(?<word>\w*a)\b(?<after>.?.?.?.?.?)/ ) {
        print "Matched: |$`<$&>$'|\n";  # the special match vars
        print '$word was '.$+{word}."\n";
        print '$after was '.$+{after}."\n";
    } else {
        print "No match: |$_|\n";
    }
}
