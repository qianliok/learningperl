#!/usr/bin/perl
use strict;
use warnings;

chomp( my @lines = <> );

foreach my $line ( @lines ){
  if ( $line =~ /\s+\Z/ ){
    print "${line}CRLF\n"
  }
}