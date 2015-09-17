#!/usr/bin/perl

use warnings;
use strict;
use feature "state";

greet( "Fred" );
greet( "Barney" );

sub greet {
  state $name = undef;
  print "Hi @_! You are the first one here!\n" if ( !defined $name );
  print "Hi @_! $name is also here!\n" if ( defined $name );
  ( $name ) = @_;
}
