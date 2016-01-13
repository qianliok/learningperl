#!/usr/bin/perl

use warnings;
use strict;

my $date = `date`;
if( $date =~ /^(Mon|Tue|Wed|Thur|Fri)/ ) {
  print "get to work\n";
} elsif( $date =~ /^(Sat|Sun)/ ) {
  print "get play\n";
}
