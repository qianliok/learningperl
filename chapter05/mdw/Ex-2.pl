#!/usr/bin/perl

use feature "say";

my @words;

while(<>){

push @words, $_;

}

say "123456789012345678901234567890";

chomp @words;

foreach $word ( @words ){

printf "%20s\n", $word;

}
