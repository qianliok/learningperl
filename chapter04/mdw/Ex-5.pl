#!/usr/bin/perl

use 5.010;

use strict;

sub greet{

my $name = shift @_;

state @lastvisitor;

  if ( @lastvisitor ){
     say "Hi $name, I have seen: @lastvisitor\!";
     push @lastvisitor, $name;
  } else {
    say "Hi $name you are the firsts person!";
    push @lastvisitor, $name;
  }
};

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
