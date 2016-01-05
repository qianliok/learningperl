#!/usr/bin/perl

use warnings;
use strict;

print "Enter a string: \n";
chomp( my $string = <STDIN> );

print "Enter a substring: \n";
chomp( my $sub = <STDIN> );
print "-----------------\n";

my $index = -1;
while( 1 ){
  $index = index( $string, $sub, ++$index );
  last if( $index == -1 );
  print $index . "\n";
}

