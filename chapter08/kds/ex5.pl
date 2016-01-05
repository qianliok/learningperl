#!/usr/bin/perl

use warnings;
use strict;

print "Enter strings to match any words ending in 'a':\n";
while (<>){                             # take one input line at a time
    chomp;
    if (/(?<word>\w+a\b)(?<extra>.{0,5})/) {
        print "Matched: |$`<$+{word}$+{extra}>$'|\n";  # the special match + named capture variable
    } else {
        print "No match: |$_|\n";
    }
}
