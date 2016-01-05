#!/usr/bin/perl

use 5.010;

use strict;

sub total{

  my $total = shift @_;

  foreach my $number (@_){

    $total += $number

  }

  $total
}

my @numberlist = (1..1000);

my $answer = total @numberlist;

say $answer;
