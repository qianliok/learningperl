#!/usr/bin/perl
use warnings;
use strict;

use 5.010001;

my $secret = int( 1 + rand 100 );

#my $secret = 4;
my $count = 0;

LOOP: {    #empty block, I add a name from chapter 10 for more readability ;)
	print "Enter a number between 1 and 100: ";
	chomp( my $guess = <STDIN> );

	given ($guess) {
		when (/quit|exit|\A\s*\z/i) {
			print "You tried " . ++$count . " times. The number was $secret.\n";
		}
		when ( $_ < $secret ) {
			print "Try " . ++$count . "  :Too small. Try again!\n";
			redo LOOP;
		}
		when ( $_ == $secret ) {
			print "Try " . ++$count . "  :Good! you find it\n";
		}
		default {
			print "Try " . ++$count . "  :Too large. Try again!\n";
			redo LOOP;
		}

	}

}

