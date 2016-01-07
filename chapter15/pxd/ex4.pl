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
	say "Usage: ./ex4.pl <number>";
	exit 0;
}

my @divisors = divisors($ARGV[0]);
my @empty_arr;

given ( $ARGV[0] ) {
	when ( @empty_arr ~~ @divisors) { say "$_ is a prime number"; }
	default { say "Divisors for $_: @divisors"; }
}


