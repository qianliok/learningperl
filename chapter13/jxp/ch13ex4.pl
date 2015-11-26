#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

foreach my $file ( @ARGV ){
  unlink $file or warn "Cannot delete $file: $!";
}