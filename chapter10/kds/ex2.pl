#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

my $random = int(1 + rand 100);
my $verbose = 1;

while(1){
  ( !$verbose ) || print "<verbose> number is: $random\n";
  print "Please guess the number: ";
  chomp( my $input = <STDIN> );
  die "quitting...\n" if( $input eq "exit" || $input eq "quit" );
  $verbose = !$verbose if( $input =~ /verbose/ );
  next if( !looks_like_number( $input ) );
  print "Too high!\n" if( $input > $random );
  print "Too low!\n" if( $input < $random );
  if( $input == $random ){
    print "you guessed correctly!\n";
    print "would you like a new number? 'y': ";
    chomp( my $decision = <STDIN> );
    ( $decision =~ /y/i ) ? $random = int(1 + rand 100) : last;
  }
}
