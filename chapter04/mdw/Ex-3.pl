#!/usr/bin/perl

use 5.010;

use strict;

sub average{

  my $total = shift @_;
  my $count = 1;

  foreach my $number (@_) {

    $total += $number;
    $count += 1;

  }

$total/$count;
};

sub above_average{

  my @those_above;

  my $average = average (@_);

  foreach my $number (@_) {

    if ( $number > $average ) {
  
    push @those_above, $number;

    }
  }
  
  @those_above;
 
}; 

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
