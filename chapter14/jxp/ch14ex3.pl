#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

say "Please enter a string to search through";
chomp( my $string = <STDIN> );

say "Please enter a string to search for";
chomp( my $search_string = <STDIN> );


my $start = 0;
my @positions;
while ( $start != -1 ){
  $start = index( $string, $search_string, $start );
  if ( $start != -1 ){
    push @positions, $start++;
  }
}

if ( scalar @positions == 0 ){
  say "'$search_string' was not found within '$string'";
} else {
  say "'$search_string' was found at the following positions: @positions";
}