#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util qw ( looks_like_number );
use v5.10;

my @array = (1..1000);
say "The total of the numbers 1 to 1000 is " . total( @array );

sub total {
  my $sum;
  chomp( @_ );
  foreach my $number ( @_ ) {
    if( looks_like_number( $number ) ){
      $sum += $number;
    }else{
      say "$number is not a number, ignoring";
    }
  }
  $sum;
}
