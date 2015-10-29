#!/usr/bin/perl
use warnings;
use strict;

my $copyright = "## Copyright (C) 2015 by qli\n";

$^I = ".bak";
while (<>) {
  if( /#!/ ){
    $_ .= $copyright;
  }
  print;
}


