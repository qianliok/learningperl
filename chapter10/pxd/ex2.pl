#!/usr/bin/perl -w
use strict;
use feature "say";

use Scalar::Util qw( looks_like_number );

my $debug = $ARGV[0] // 0;

my $num = int( 1 + rand 100 );
say "Guess the secret number between 1 and 100 (Type quit/exit to exit the program)  : ";


my @out = ( "Congratulations! That's the right answer", "Incorrect! Too High!", "Incorrect! Too Low!");


while ( my $guess_num = <STDIN> ) {
        chomp $guess_num;
	my $temp;
	if ( $guess_num eq '' || $guess_num =~ /exit|quit/ ) {
		say "Bye... Exiting...";
		last;
	}
	elsif ( looks_like_number( $guess_num ) ) {
		my $temp = $guess_num <=> $num;
		say $out[$temp];
		say "The number you guessed $guess_num is offset by :: " .abs($guess_num - $num) if $debug;
	}
	else {
	         say "The input $guess_num is not valid. Please try again... ";
	}
	exit 0 if ($temp == 0);
}


