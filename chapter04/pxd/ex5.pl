#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

sub greet {
  my ( $character ) = @_; 
  state @visitors;

  if ( scalar @visitors ) {
    say "Hi $character! I've seen ".  join( ', ', @visitors ) ;
  }
  else {
    say "Hi $character! You are the first one here!";
  }
  
  push @visitors, $character;
}


greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
