#!/usr/bin/perl

use warnings;
use strict;

while( <> ){
  if( /[A-Z][a-z]/ ){
    print $_;
  }
}

