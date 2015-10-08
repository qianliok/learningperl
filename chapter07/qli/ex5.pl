#!/usr/bin/perl

use warnings;
use strict;

while( <> ){
  if( /(\w)\1/ ){
    print $_;
  }
}

