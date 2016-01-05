#!/usr/bin/perl

use warnings;
use strict;

my $oldest_file;
my $oldest_age=0;

foreach my $file (@ARGV) {
  if( -e $file && -M $file > $oldest_age ){
    $oldest_file = $file;
    $oldest_age = -M $file;
  }else{
    next;
  }
}

print "The oldest file is $oldest_file which is created $oldest_age ago \n";
