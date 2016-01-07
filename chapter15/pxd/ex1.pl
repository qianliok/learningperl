#!/usr/bin/perl 

use strict;
use warnings;
use feature "say";
use 5.010001;

use Scalar::Util qw( looks_like_number );

my $num = int( 1 + rand 100 );
say "Guess the secret number between 1 and 100 (Type quit/exit to exit the program)  : ";

while ( chomp( my $guess_num = <> ) ) {
	given ($guess_num) {
		when ( /quit|exit/i ) { say "Bye... Exiting..."; last; }
		when ( !looks_like_number($_)) { say "The input $_ is not valid. Please try again... or type exit/quit to exit the program"; }
		when ( $_ < $num ) { say 'Incorrect! Too Low!' }
	    when ( $_ > $num ) { say 'Incorrect! Too High!' }
	    when ( $_ == $num ) { say "Congratulations! That's the right guess"; last }
	}

}


