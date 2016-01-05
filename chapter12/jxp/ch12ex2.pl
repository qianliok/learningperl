#!/usr/bin/perl
use warnings;
use strict;
use feature "say";

my $oldest_file;
my $oldest_file_age=-9999999;

if ( scalar @ARGV == 0 ){
  die "Please enter some files\n";
}


foreach my $filename ( @ARGV ){
  if ( -M $filename > $oldest_file_age ){
    $oldest_file = $filename;
    $oldest_file_age = -M $filename;
  }
}

say "The oldest file is $oldest_file which is $oldest_file_age days old";