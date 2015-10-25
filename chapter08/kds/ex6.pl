#!/usr/bin/perl

use warnings;
use strict;

print "Enter strings that end in whitespace to match:\n";
while (chomp( my $line = <STDIN> )){
   ($line =~ /(?<white>\s+\z)/) ? print "Matched: |$`<$+{white}>$'|\n" : print "No match: |$line|\n";
}
