#!/usr/bin/perl

use warnings;
use strict;

my @names = ();

sub greet {
  my ( $name ) = @_;

  if ( @names == 0 ){
    print "Hi $name! You are the first one here!\n";
  }else{
    print "Hi $name! I've seen: @names\n";    
  }
  push @names, $name;
}


greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
