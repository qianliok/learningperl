#!/usr/bin/perl

use 5.010;
use strict;
use warnings;

foreach (<>) {
  if ( /[fF]red/ ) {
    print $_
  }
}
