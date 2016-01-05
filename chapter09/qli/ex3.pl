#!/usr/bin/perl
## Copyright (C) 2015 by qli
use warnings;
use strict;

open my $inputFile, '<',  $ARGV[0] or die "Could not open $ARGV[0]: $!";
open my $outputFile, '>', $ARGV[0].".out" or die "Could not open $ARGV[0].out: $!";

while (<$inputFile>) {
  s/fred/_TEMP_/gi;
  s/wilma/Fred/gi;
  s/_TEMP_/Wilma/gi;
  print $outputFile $_;
}


