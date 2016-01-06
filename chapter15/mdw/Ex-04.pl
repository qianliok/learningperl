#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);
use 5.010001;

given ( $ARGV[0] ) {
	when ( !looks_like_number( $_ ) ) { say "$_ is not a number!" }  
	my @divs = divisors( $ARGV[0] );
	when ( @divs == 0 ) { say "The number $_ is prime!" }
	say "The factors of $_ are " . join (',', @divs);
}

sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisor ( 2 .. ( $number/2 ) ) {
        push @divisors, $divisor unless $number % $divisor;
    }

    return @divisors;
}
