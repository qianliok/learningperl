#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use 5.010001;


sub divisors {
	my $number = shift;
	my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }
	return @divisors;
}


if (scalar @ARGV == 0 ) {
	say "Usage: ./ex5.pl <number>";
	exit 0;
}

my @divisors = divisors($ARGV[0]);
my @empty_arr;
my $fav_num = 5;

given ( $ARGV[0] ) {
	when ( @empty_arr ~~ @divisors ) { say "$_ is a prime number"; continue; }
	when ( !(2 ~~ @divisors ) ) { say "$_ is an odd number"; continue; }
	when ( 2 ~~ @divisors ) { say "$_ is an even number"; continue; }
	when ( @divisors ~~ $fav_num ) { say "$_ is divisible by your favourite number: $fav_num"; }
	default { say "Divisors for $_: @divisors"; }
}


