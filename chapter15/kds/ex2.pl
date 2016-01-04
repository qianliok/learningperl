#!/usr/bin/perl

use warnings;
use strict;
use 5.010001;

my $flag = 0;

foreach (1..105){
  $flag = 0;
  when ( $_ % 3 == 0 ) { print "Fizz!"; $flag = 1; continue }
  when ( $_ % 5 == 0 ) { print "Bin!"; $flag = 1; continue }
  when ( $_ % 7 == 0 ) { print "Sausage!"; $flag = 1; continue }
  print $_ . "\n" if( !$flag );
  print "\n" if ( $flag );
}
