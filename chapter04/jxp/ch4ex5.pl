#!/usr/bin/perl
use strict;
use warnings;
use v5.10;

sub greet {
  state @previous;
  my $name = shift;
  if( scalar @previous == 0 ){
    say "Hi $name! You are the first one here!";
    push @previous, $name;
  } else {
    say "Hi $name! I've also seen: @previous";
    push @previous, $name;
  }
}

&greet( 'Fred' );
&greet( 'Barney' );
&greet( "Wilma" );
&greet( "Betty" );
