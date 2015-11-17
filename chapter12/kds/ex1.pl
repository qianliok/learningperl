#!/usr/bin/perl

use warnings;
use strict;

die "Supply some files...\n" if( scalar @ARGV < 1);

foreach ( @ARGV ){
  if( -e ){
    print "File $_ exists and it is...\n";
    ( -r ) ? print "...readable.\n" : print "...not readable.\n";
    ( -w ) ? print "...writable.\n" : print "...not writable.\n";
    ( -x ) ? print "...executable.\n" : print "...not executable.\n";
  }else{
    print "File $_ does not exist...\n";
  }
}

