#!/usr/bin/perl

use warnings;

print "Please input a list of numbers (on separate lines, range between 1-7) until Contorl-D to end-of-input: \n";
chomp( @numbers = <STDIN> );

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

foreach $num ( @numbers ) {
  if ( $num < 1 || $num > $#names+1 ){
    print "\nInvalid number [$num] found, program exit! \n";
    exit;
  }else{
    print $names[$num-1]." ";
  }
}


