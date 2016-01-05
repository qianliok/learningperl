#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util qw ( looks_like_number );
use v5.10;

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

sub total {
  my $sum;
  my @array = @_;
  chomp( @array );
  foreach my $number ( @array ) {
    if( looks_like_number( $number ) ){
      $sum += $number;
    }else{
      say "$number is not a number, ignoring";
    }
  }
  $sum;
}

sub average {
  my $total = &total( @_ );
  my $average = $total / scalar @_;
}

sub above_average {
  my @above_average;
  my $average = &average( @_ );
  foreach my $number( @_ ){
    if( $number > $average ){
      push @above_average, $number;
    }
  }
  @above_average;
}  