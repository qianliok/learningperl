#!/usr/bin/perl
use strict;
use warnings;
use v5.10;

sub greet {
  state $previous;
  my $name = shift;
  if( !defined $previous ){
    say "Hi $name! You are the first one here!";
    $previous = $name;
  } else {
    say "Hi $name! $previous is also here!";
    $previous = $name;
  }
}

&greet( 'Fred' );
&greet( 'Barney' );
