#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);
use 5.010001;

print "Welcome! Enter a number to be Fizzed:";

given( <> ) {
	when ( !looks_like_number( $_ ) ) {
		say "Thats not a number. You have failed to use this program corrrectly..";
	}
	when ( $_ % 3 == 0 ) {
		say "Fizz"; continue
	}
	when ( $_ % 5 == 0 ) {
                say "Bin"; continue
        }
	when ( $_ % 7 == 0 ) {
                say "Sausage"
        }
} #105 says all

