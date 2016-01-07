#!/usr/bin/perl
use warnings;
use strict;

use 5.010001;

print "Enter a number: ";
chomp( my $guess = <STDIN> );

my @empty;

given ($guess) {
	when ( !/\A\d+\Z/ ) { print "Not a number!" }
	my @divisors = divisors($_);
	when ( @divisors ~~ @empty ) {
		say "Number is prime";
	}    # preferably a scalar $divisors a better option.
	default { print "$guess is divisible by @divisors\n" };
}

sub divisors {
	my $number = shift;

	my @divisors = ();
	foreach my $divisor ( 2 .. $number / 2 ) {
		push @divisors, $divisor unless $number % $divisor;
	}

	return @divisors;
}
