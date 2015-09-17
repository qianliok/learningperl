#!/usr/bin/perl

use warnings;
use strict;

sub total {
  my $total = 0;
  foreach my $num (@_){
    $total += $num;
  }
  return $total;
}

my $total = total(1..1000);
print "The total of \@1..1000 is $total.\n";

