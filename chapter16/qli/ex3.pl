#!/usr/bin/perl
use warnings;
use strict;

my $day = `date | awk '{print \$1}'`;
if ( $day eq "Sat" || $day eq "Sun"  ){
  print "go play\n";
}else{
  print "get to work\n";
}

