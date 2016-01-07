#!/usr/bin/perl 

use strict;
use warnings;
use feature "say";
use 5.010001;

use Scalar::Util qw( looks_like_number );

say "Provide numbers to see if its divisible by 3/5/7 . (Type quit/exit to exit the program)  : ";


while ( chomp( my $num = <> ) ) {
	given ($num) {
		when ( /quit|exit/i ) { say "Bye... Exiting..."; last; }
		when ( !looks_like_number($_)) { say "The input $_ is not valid. Please try again... or type exit/quit to exit the program"; }
		when ( !( $_ % 3 ) ) { print 'Fizz'; continue; }
	    when ( !( $_ % 5 ) ) { print 'Buzz'; continue; }
	    when ( !( $_ % 7 ) ) { say 'Sausage'; continue; }
	}

}


