#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);
use 5.010001;

my $random = int(1 + rand 100);

while(1){
  print "Please guess the number: ";
  chomp( my $input = <STDIN> );
  die "quitting..." if( $input eq  "exit" || $input eq "quit" || $input eq "" );
  next if( !looks_like_number( $input ) );
  given( $input ) {
    when( $input > $random ) { print "Too high!\n" }
    when( $input < $random ) { print "Too low!\n" }
    default                  { print "You guessed correctly!\n"; last }
  }
}
