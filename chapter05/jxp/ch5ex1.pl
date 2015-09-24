#!/usr/bin/perl
use warnings;
use strict;

my @lines;

while( my $line = <> ){
  if ( $line !~ /\n$/  ) {
    $line .= "\n";
  }
  push @lines, $line;
}

print reverse @lines;
