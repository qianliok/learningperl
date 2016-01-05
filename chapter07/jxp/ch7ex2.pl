#!/usr/bin/perl
use warnings;
use strict;

while ( my $line = <> ){
  if ( $line =~ /(f|F)red/ ){
    print $line;
  }
}