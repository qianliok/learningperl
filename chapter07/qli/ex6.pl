#!/usr/bin/perl

use warnings;
use strict;

while( <> ){
  if( /wilma/ && /fred/ ){
    print $_;
  }
}

