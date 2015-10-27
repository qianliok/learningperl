#!perl
## Copyright (C) 2015 by me
use warnings;
use strict;

$^I = "~";
my $copyright = "## Copyright (C) 2015 by me\n";

while (<>) {
  if (/\A#!/) { 
    $_ .= $copyright;
  }
  print;
}
