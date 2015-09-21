#!/usr/bin/perl
use warnings;
use strict;
use Scalar::Util qw ( looks_like_number );

my $width;
while ( !defined $width || !looks_like_number($width) ){
  print "Please input column width: \n"; 
  chomp($width = <STDIN>);
}

print "Please input some text: \n";
chomp( my @inputs = <STDIN> );

print "1234567890"x($width/10+2), "\n" ;
foreach my $str ( @inputs ){
    printf "%${width}s\n", $str;    
}
  
