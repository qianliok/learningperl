#!/usr/bin/perl

use warnings;
use strict;
use 5.010001;

given ( $ARGV[0] ) {
  when ( undef ) { print "Please input a number as cmd argument! \n"; }
  chomp;

  when ( ! /^\d+$/ ) { print "Not a valid number! \n"; }

  my @div = divisors( $ARGV[0] );
  when ( @div == 0 ) { print "The number is prime! \n" }
  default { print "The number is divisible by  @div \n"; }
}

sub divisors {
  my $number = shift;

  my @divisors = ();
  foreach my $divisor ( 2 .. ( $number / 2 ) ) {
    push @divisors, $divisor unless $number % $divisor;
  }

  return @divisors;
}

