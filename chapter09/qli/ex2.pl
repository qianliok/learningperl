#!/usr/bin/perl
use warnings;
use strict;

open my $inputFile, '<',  $ARGV[0] or die "Could not open $ARGV[0]: $!";
open my $outputFile, '>', $ARGV[0].".out" or die "Could not open $ARGV[0].out: $!";

while (<$inputFile>) {
  s/fred/larry/gi;
  print $outputFile $_;
}


