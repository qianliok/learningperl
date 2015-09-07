#!/usr/bin/perl

use warnings;

my $radius = undef;
while( !$radius ){
  print "Please input a number for caulating the circumference of a circle.\n ";
  $radius=<STDIN>;
  chomp($radius);

  if( !$radius ){
    next;
  }

  my $result;
  if ( $radius < 0 ){
     $result = 0;
  }else{
     $result = $radius * 2 * 3.141592654;
  }
  print "result=$result \n";
}


