#!/usr/bin/perl
use strict;
use warnings;
use feature "say";

if(scalar @ARGV != 1 ){
  say "Please provide one file as a command line argument";
}else {

  my $output_file = $ARGV[0] . ".out";

  open my $fh, '>', $output_file;

  while(my $line = <> ){
    $line =~ s/Fred/Larry/i;
    print $fh $line;
  }

  close $fh;
}


