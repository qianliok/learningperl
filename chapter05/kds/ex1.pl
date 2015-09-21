#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

my @lines;
while (<>) {
  push @lines, $_;
}
@lines = reverse @lines;
say @lines;

