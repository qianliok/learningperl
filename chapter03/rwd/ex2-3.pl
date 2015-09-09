#!/usr/bin/perl

use strict;
use warnings;

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);

print "Give me numbers from 1 to 7 [Crtl-D to stop]:\n";
print "$names[$_-1]\n" foreach (<>);

exit 0;

