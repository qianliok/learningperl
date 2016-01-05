#!/usr/bin/perl
use strict;
use warnings;

my @inputs = ();
print "Enter some text\n";
if( $ARGV[0] ){
  chomp( @inputs = <STDIN> );
}else{
  @inputs = <STDIN>;
}

print sort @inputs;