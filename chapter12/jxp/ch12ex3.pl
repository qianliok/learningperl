#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

if ( scalar @ARGV == 0 ){
  die "Please enter some files\n";
}

say "The following files are owned by you, readable and writable:";

foreach my $filename ( @ARGV ){
  if( -w -r -o $filename ){
    say $filename;
  }
}