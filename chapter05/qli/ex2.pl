#!/usr/bin/perl
use warnings;
use strict;


chomp( my @inputs = <STDIN> );

print "1234567890"x5, "\n" ;
foreach my $str ( @inputs ){
    printf "%20s\n", $str;    
}
  

