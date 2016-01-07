#!/usr/bin/perl

use warnings;
use strict;
use 5.010001;


if ( @ARGV == 0 ) {
  print "Please give some file names as cmd arguments.\n";
  exit;
}

foreach ( @ARGV ) {
  my $str = '';
  when ( !-e ) { print "File does not exist! \n" }
  when ( -r _ ) { $str .= "Readable! "; continue }
  when ( -w _ ) { $str .= "Writable! "; continue }
  when ( -x _ ) { $str .= "Executable! "; continue }

  print "$_ :: $str\n";
}


