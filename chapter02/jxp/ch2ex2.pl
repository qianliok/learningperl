#!/usr/bin/perl
use strict;
use warnings;
use Math::Trig;

print "Enter a radius\n";
chomp(my $radius = <STDIN>);

print 2*pi*$radius,"\n";
