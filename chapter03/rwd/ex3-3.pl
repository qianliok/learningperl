#!/usr/bin/perl

use strict;
use warnings;

print "Give me words to sort [Crtl-D to stop]:\n";
my @words = <>;

print "On separate lines:\n";
print (@words = sort(@words));

chomp (@words);
print "On same line:\n";
print "@words\n";

exit 0;

