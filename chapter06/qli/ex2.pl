#!/usr/bin/perl

use warnings;
use strict;

my %words_hash = ( );

print "Please input words util Ctrl+D to complete: \n";
while( my $word = <STDIN> ) {
   chomp $word; # having chomp inside while() gives uninitialized warnings for empty inputs
   $words_hash{$word} += 1 ; 
}

print "#"x20 . " Summary sorted by points " . "#"x20 . "\n";
foreach my $word (sort { $words_hash{$b} <=> $words_hash{$a} } keys %words_hash){
  print "'$word' was seen $words_hash{$word} times \n";
}


