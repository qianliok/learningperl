#!/usr/bin/perl
use strict;
use warnings;

my @names = qw( fred betty barney dino wilma pebbles bamm-bamm );

chomp( my @inputs = <STDIN> );

foreach my $input ( @inputs ){
   print $names[$input-1]."\n";
}
   