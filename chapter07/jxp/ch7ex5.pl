#!/usr/bin/perl
use warnings;
use strict;

while ( my $line = <> ){
  if ( $line =~ /(\S)\g{1}/ ){
    print $line;
  }
}