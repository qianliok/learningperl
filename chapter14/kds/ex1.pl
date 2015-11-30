#!/usr/bin/perl

use warnings;
use strict;

chomp( my @numbers = <STDIN> );

print "------\n";
printf "%10g\n" x @numbers, ( sort {$a <=> $b} @numbers );

