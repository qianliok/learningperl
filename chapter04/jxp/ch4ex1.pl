#!/usr/bin/perl
use strict;
use warnings;
use Scalar::Util qw ( looks_like_number );
use v5.10;

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

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
