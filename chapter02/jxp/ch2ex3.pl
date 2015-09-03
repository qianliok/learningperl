#!/usr/bin/perl
use strict;
use warnings;
use Math::Trig;

print "Enter a radius\n";
chomp(my $radius = <STDIN>);

if($radius < 0){
  print 0;
}else {
  print 2*pi*$radius,"\n";
}