#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

foreach (<>) {
  if ( /fred/ ) {
    print $_
  }
}
