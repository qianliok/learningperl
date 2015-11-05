#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);

my $log; ##Add = 1 to turn off logging
my $attempts = 0;
my $number = int(1 + rand 100);
$log // say $number;

say "Welcome, try to guess my number";

while (<>){
	my $guess = $_;
	if ( $guess =~ /exit|quit/){
		say "You gave up after " . $attempts . " tries";
		last;
	}
	if ( !looks_like_number( $guess ) ){
		say "Thats not a number. You lose.";
		last;
	}
	$attempts += 1;
	if ( $guess == $number ){
		if ( $attempts == 1 ){
			say "You won with your first guess!";
		} else {
			say "You Win. It took " . $attempts . " guesses";
		}
		last;
	}
	if ( $guess > $number ){
		say "Too high ";
	}
	if ( $guess < $number ){
                say "Too low ";
        }
	say "Try again?";
}
