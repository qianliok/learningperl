#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


my %names = ( 
              fred => "Flintstone",
              barney => "Rubble",
              wilma => "Flintstone",
            ); 

print "Please enter some first names (Ctrl-D to exit) :\n";

while ( chomp(my $given_name = <STDIN>) ) {
  if ( $given_name ) {
    $given_name = lc($given_name);
    if ( exists $names{$given_name} ) {
      say "We know $given_name $names{$given_name} ";
    }
    else {
      say "Sorry, the only people I know are : " . join( ", ", sort(keys(%names)));
    }
  }
  else {
    say "I don't know any anonymous people! ";
  }
}



