#!/usr/bin/perl
use strict;
use warnings;

print "Enter two values\n";
chomp(my $a = <STDIN>);
chomp(my $b = <STDIN>);

print $a*$b;