#!/usr/bin/perl

use warnings;
use strict;

foreach( glob "*" ){
  my $link = readlink $_;
  print $_ . " => " . $link . "\n" if( -l );
}
