#!/usr/bin/perl
use warnings;
use strict;

my $max_length = 0;

foreach my $key ( keys %ENV ){
  if( length $key > $max_length ){
    $max_length = length $key;
  }
}

$max_length = $max_length + 2;

foreach my $key ( sort keys %ENV ){
  printf "%-${max_length}s%s\n", $key, $ENV{$key};
}