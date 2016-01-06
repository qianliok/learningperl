#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);
use 5.010001;

my $attempts = 1;
my $number = int(1 + rand 100);

say "Welcome, try to guess my number";

while ( <> ) {
	my $guess = $_;
	given( $guess ) {
		when ( /(exit|quit)/ ) {
			say "You gave up.";
			last
		}
		when ( !looks_like_number( $_ ) ) {
			say "Thats not a number. You lose.";
			last
		}
		when ( $number ) {
			if ( $attempts == 1 ) {
				say "You won with your first guess!";
			} else {
				say "You Win. It took " . $attempts . " guesses";
			}
			last
		}
		when ( $_ > $number ) {
			say "Too high "; continue
		}
		when ( $_ < $number ) {
                	say "Too low "; continue
        	}
		default { say "Try again?"; $attempts += 1 }
	}
}
