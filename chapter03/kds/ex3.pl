#!/usr/bin/perl

use warnings;
use strict;

my @strings;

print "Type a few strings on separate lines, exit with ctrl + d:\n";
do{
  @strings = <STDIN>;
}while( <> );

print "Type y/Y to display on one line:\n";
if( <STDIN> =~ /[yY]/ ){
  chomp( @strings );
}

@strings = sort( @strings );
print "@strings";
