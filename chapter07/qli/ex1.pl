#!/usr/bin/perl

use warnings;
use strict;

print "Please input some text or files for 'fred' grepping:\n";
while( <> ){
  if( /fred/ ){
    print $_;
  }
}

