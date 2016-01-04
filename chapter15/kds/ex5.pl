#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);
use 5.010001;

die "Invalid number\n" if( !looks_like_number( $ARGV[0] ) );

my $fav = 77;
my @divs = divisors( $ARGV[0] );
my @nothing;

given( $ARGV[0] ){
  when( 2 ~~ @divs ) { print "$_ is even\n"; continue }		#2 in divisors so even num
  when( !( 2 ~~ @divs ) ) { print "$_ is odd\n"; continue }	#2 not in divisors so odd num
  when( $fav ~~ @divs ) { print "$_ is divisible by your fav number\n"; continue }	#fav is in divisors
  when( @nothing ~~ @divs ) { print "$_ is prime\n" }		#nothing matches divisors, so prime
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
