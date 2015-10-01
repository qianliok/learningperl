#!/usr/bin/perl

use 5.010;

my %words;

foreach ( <> ) {

  chomp $_;

  if ( exists $words{$_} ) {

    $words{$_} += 1;

  } else {

    $words{$_} = 1;

  }

}

my @words = keys %words;

@words = sort @words;

foreach my $word (@words) { 

  say "The word $word was used $words{$word} times";

}


