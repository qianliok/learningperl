#!/usr/bin/perl -w

use strict;
use warnings;
use Scalar::Util qw( looks_like_number );

use constant PI => 3.141592654;

print "Enter the radius: ";
chomp(my $radius = <STDIN>);

while ( !defined $radius || !looks_like_number( $radius )) {
  print "Enter the radius (nummeric) :  ";
  $radius = <STDIN>;
  chomp $radius;
}

my $circumference = ( 2 * PI * $radius );

print "The circumference is: $circumference\n";
