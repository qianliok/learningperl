#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);
use 5.010001;

die "Invalid number\n" if( !looks_like_number( $ARGV[0] ) );

my @divs = divisors( $ARGV[0] );
my @nothing;

given( $ARGV[0] ){
  when( @nothing ~~ @divs ) { print "$_ is prime\n" }
  default { print "$_ is divisible by: @divs\n" }
}

sub divisors {
    my $number = shift;
    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }
    return @divisors;
}
