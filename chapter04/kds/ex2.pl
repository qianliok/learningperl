#!/usr/bin/perl

use warnings;
use strict;

my $user_total = total( 1..1000 );
print "The total sum of 1..1000 is $user_total.\n";

sub total {
  my $sum = 0;

  $sum += $_ foreach @_;
  return $sum;
}
