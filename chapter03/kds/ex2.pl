#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw( looks_like_number );

my @names = qw( fred betty barney dino wilma pebbles bamm-bamm );
my @numbers;
my $num;

print "Type a few numbers between 0-6 and exit with ctrl + d:\n";
do{
  @numbers = <STDIN>;
}while( <> );

chomp( @numbers );

foreach $num ( @numbers ){
  if( !looks_like_number( $num ) ){
    print "$num is not a number, ignoring...\n";
  } elsif( !( $num <= 6 && $num >= 0 ) ){
    print "$num is not between 0-6, ignoring...\n";
  } else {
    print "$names[$num]\n";
  }
}
