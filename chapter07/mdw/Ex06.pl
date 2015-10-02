#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

foreach (<>) {
  if ( /fred/ ) {
    if ( /wilma/ ) {
    print $_
    }
  }
}

#could add /b to check fred and wilma are seperate words
