#!/usr/bin/perl
use strict;
use warnings;

print "Enter a string\n";
my $string = <STDIN>;
print "Enter a number\n";
chomp(my $number = <STDIN>);

print $string x $number;