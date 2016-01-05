#!/usr/bin/perl

use strict;
use warnings;
use feature "say" ;


say "Enter a few lines (Ctrl-D or Ctrl-Z if using Windows) to exit: ";

my @lines = ();

while ( my $str = <STDIN> ) {
  push @lines, $str;
}

if( !@lines ) {
	warn "\n Heyy! That's no fair!! Your list is empty!\n";
}
else {

	say "*" x 60 ;
	say "Input in reverse : \n";
	say reverse @lines;
}


