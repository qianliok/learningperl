#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

my $random = int(1 + rand 100);

while(1){
  print "Please guess the number: ";
  chomp( my $input = <STDIN> );
  die "quitting..." if( $input eq ( "exit" || "quit" || "" ) );
  next if( !looks_like_number( $input ) );
  print "Too high!\n" if( $input > $random );
  print "Too low!\n" if( $input < $random );
  if( $input eq $random ){
    print "you guessed correctly!\n";
    print "would you like a new number? 'y': ";
    chomp( my $decision = <STDIN> );
    ( $decision =~ /y/i ) ? $random = int(1 + rand 100) : last;
  }
}
