#!/usr/bin/perl

use strict;
use warnings;
use feature "say" ;
use Scalar::Util qw(looks_like_number);

my @strings = qw (fred betty barney dino wilma pebbles bamm-bamm);
say "Enter a few number between 1-7  Ctrl-D or Ctrl-Z if using Windows) to exit: ";
chomp(my @lines = <STDIN>);

say "*" x 60;

if(!@lines) {
	warn "\nAll right rubble, what is this?\n";
}

foreach my $num (@lines) {
	if(!looks_like_number($num) || $num < 1 || $num >7 ) {
			say "\nFred :: And what may I ask do you think you're doing? entering number - $num ??  !!! \n ";
	}
	else {	
			say "Flintstone number $num is : " . $strings[$num-1] . "\n";
	}
}

say "*" x 60;
