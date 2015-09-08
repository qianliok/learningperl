#!/usr/bin/perl
use strict;
use warnings;

print "Enter some text\n";
my @input = <STDIN>;

print reverse @input;