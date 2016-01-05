#!/usr/bin/perl
use warnings;
use strict;

open my $file, '<',  $ARGV[0] or die "Could not open $ARGV[0]: $!";
while(<$file>){
  if( /^## Copyright \(C\)/ ){
    exit 1;
  }
}



my $copyright = "## Copyright (C) 2015 by qli\n";

$^I = ".bak";
while (<>) {
  if( /#!/ ){
    $_ .= $copyright;
  }
  print;
}


