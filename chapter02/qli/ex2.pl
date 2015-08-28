#!/usr/bin/perl

use warnings;

my $radius=<STDIN>;

chomp($radius);

if( $radius ){
  my $result = $radius * 2 * 3.141592654;
  print "result=$result\n";
}else{
  print "Please input a number for caulating the circumference of a circle.\n ";
}



