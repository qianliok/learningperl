#!/usr/bin/perl

use warnings;
use strict;

die "Supply some files...\n" if( scalar @ARGV < 1);

foreach ( @ARGV ){
  if( -e ){
    if( -r -w -O ){
      print "File $_ is readable, writable and owned by you.\n";
    }
  }else{
    print "File $_ does not exist...\n";
  }
}

