#!/usr/bin/perl

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);
use 5.010001;


my $input = $ARGV[0];
chomp $input if defined $input;
if ( !looks_like_number( $input ) ) {
  print "Please give a number as cmd argument.\n";
  exit;
}

my $str = '';

given ( $input ) {
  when ( not $input % 3 ) { $str .= "Fizz "; continue }
  when ( not $input % 5 ) { $str .= "Bin "; continue }
  when ( not $input % 7 ) { $str .= "Sausage "; }
}

print "$input $str\n";

