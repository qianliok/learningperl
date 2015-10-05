#!/usr/bin/perl

use warnings;
use strict;

print "Enter some text or supply an input file as an argument:\n";
while( <> ){
  print "$_" if( /[A-Z][a-z]/ );
}
