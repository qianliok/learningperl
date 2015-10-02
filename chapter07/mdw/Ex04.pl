#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

foreach (<>) {
  if ( /\b[^\s\\]*[A-Z]+[^\s\\]*[a-z]+[^\s\\]*\b/ || /\b[^\s\\]*[a-z]+[^\s\\]*[A-Z]+[^\s\\]*\b/ ) {
 # comment as i have made this more complicated than needed, this will match any word with anything+capital+anything+non-capital+anything or the othe way around
    print $_
  }
}
