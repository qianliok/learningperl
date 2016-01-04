#!/usr/bin/perl

use warnings;
use strict;
use 5.010001;

foreach ( @ARGV ){
  if ( ! -e ) {
    print "File $_ does not exist\n";
    next;
  }
  print "$_ is..\n";
  when ( -r ) { print "..is readable!\n"; continue }
  when ( -w ) { print "..is writable!\n"; continue }
  when ( -O ) { print "..is executable!\n"; }
  default { print "..neither readable, writable or executable" }
}
