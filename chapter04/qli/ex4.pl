#!/usr/bin/perl

use warnings;
use strict;

my $last_person;

sub greet {
  my ( $name ) = @_;

  if ( !defined($last_person) ){
    print "Hi $name! You are the first one here!\n";
  }else{
    print "Hi $name! $last_person is also here!\n";    
  }
  $last_person = $name;
}


greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
