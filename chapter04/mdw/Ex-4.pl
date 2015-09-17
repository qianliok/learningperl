#!/usr/bin/perl

use 5.010;

use strict;

sub greet{

my $name = shift @_;

state $lastvisitor;

  if ( defined $lastvisitor ){
     say "Hi $name,  $lastvisitor is also here!";
     $lastvisitor = $name;
  } else {
    say "Hi $name you are the firsts person!";
    $lastvisitor = $name;
  }
};

greet( "Fred" );
greet( "Barney" );
