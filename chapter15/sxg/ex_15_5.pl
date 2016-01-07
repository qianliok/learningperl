#!/usr/bin/perl
use warnings;
use strict;

use 5.010001;

print "Enter a number: ";
chomp( my $guess = <STDIN> );

if ( !( $guess ~~ (/\A\d+\Z/) ) ) { die "Not a number!" }

print "Your favorite number:";
chomp( my $favorite = <STDIN> );

if ( !( $favorite ~~ (/\A\d+\Z/) ) ) { die "Not a number!" }

my @empty;

given ($guess) {

	my @divisors = divisors($guess);
	when ( 2 ~~ @divisors ) {
		say "$guess is even";
		continue;
	}

	when ( !( 2 ~~ @divisors ) ) {
		say "$guess is odd";
		continue;
	}

	when ( $favorite ~~ @divisors ) {
		say "$guess is divisible by $favorite";
		continue;
	}

	when ( @divisors ~~ @empty ) {
		say "$guess is prime";
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

