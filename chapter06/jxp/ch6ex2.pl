#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

say "Please enter some lines";
chomp( my @lines = <STDIN> );

my %word_count;

foreach my $line ( @lines ){
  $word_count{$line}++;
}

foreach my $key ( sort keys %word_count ){
  if( $word_count{$key} == 1 ){
    say "$key was seen $word_count{$key} time";
  } else {
    say "$key was seen $word_count{$key} times";
  }
}
