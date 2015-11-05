#!/usr/bin/perl -w
use strict;
use feature "say";

use Scalar::Util qw( looks_like_number );

my $num = int( 1 + rand 100 );
say "Guess the secret number between 1 and 100 (Type quit/exit to exit the program)  : ";


my @out = ( "Congratulations! That's the right guess", "Incorrect! Too High!", "Incorrect! Too Low!");


while ( my $guess_num = <> ) {
        chomp $guess_num;
	my $temp;
	if ( $guess_num eq '' || $guess_num =~ /exit|quit/ ) {
		say "Bye... Exiting...";
		last;
	}
	elsif ( looks_like_number( $guess_num ) ) {
		# compare operator :: Gives -1,0,1 as result 
		$temp = $guess_num <=> $num;
		say $out[$temp];
	}
	else {
	         say "The input $guess_num is not valid. Please try again... ";
	}
	exit 0 if ($temp == 0);
}


