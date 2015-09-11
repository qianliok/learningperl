#!/usr/bin/perl

use warnings;
use strict;

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub above_average {
  my @num_above_avg = ();
  my $avg = calc_average( @_ );

  foreach ( @_ ) {
    push @num_above_avg, $_ if ( $_ > $avg );
  }
  return @num_above_avg;
}

sub calc_average {
  my $sum = 0;
  $sum += $_ foreach @_;
  return ($sum/scalar @_);
}
