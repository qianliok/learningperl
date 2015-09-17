#!/usr/bin/perl

use warnings;
use strict;
use feature "state";

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );

sub greet {
  state @names;
  print "Hi @_! You are the first one here!\n" if ( !@names );
  print "Hi @_! I've seen: @names\n" if ( @names );
  push @names, ( @_ );
}
