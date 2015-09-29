#!/usr/bin/perl

use 5.010;

my @keys = keys %ENV;

my $keylength;

foreach my $key (@keys) {

  if ( length $key > $keylength ) {

    $keylength = length $key;

  }

};

$keylength += 3;

my $format = "%".$keylength."s %s\n";

@keys = sort @keys;

foreach my $key (@keys) { 

  printf $format, $key, $ENV{$key};

};


