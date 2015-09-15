#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

sub greet {
  my ( $character ) = @_; 
  state $last_visitor;

  if ( $last_visitor ) {
    say "Hi $character! $last_visitor is also here!";
  }
  else {
    say "Hi $character! You are the first one here!";
  }
  
  $last_visitor = $character;
}


greet( "Fred" );
greet( "Barney" );
