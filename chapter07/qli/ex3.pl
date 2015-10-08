#!/usr/bin/perl

use warnings;
use strict;

print "Please input some text or files for '.' grepping:\n";
while( <> ){
  if( /\./ ){
    print $_;
  }
}

