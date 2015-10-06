#!/usr/bin/perl
use warnings;
use strict;

while ( my $line = <> ){
  if ( $line =~ /wilma.+fred|fred.+wilma/ ){
    print $line;
  }
}