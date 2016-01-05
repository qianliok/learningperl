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

sub average {
  if( @_ <= 0 ){
    return 0;
  }

  my $total = total(@_);
  my $avg = $total / @_ ;

  return $avg;
}

sub above_average {
  my $avg = average( @_ );
  my @above_avg = ();
  foreach my $num ( @_ ){
    if( $num > $avg ){
      push @above_avg, $num;
    }
  }
  return @above_avg;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

