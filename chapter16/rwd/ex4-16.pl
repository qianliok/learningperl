#!/usr/bin/perl

use strict;
use 5.010;

sub sigHandler {
  my ($s_name) = @_;
  state %sigocu;
  $sigocu{$s_name}++;
  print "$s_name: caught $sigocu{$s_name} times\n";
}

foreach (keys %SIG) {
  $SIG{$_} = 'sigHandler' if $_ ne "INT";
}

while (1) { sleep 1; }

