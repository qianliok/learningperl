#!/usr/bin/perl
use warnings;
use strict;

while ( my $line = <> ){
  if ( $line =~ /fred/ ){
    print $line;
  }
}