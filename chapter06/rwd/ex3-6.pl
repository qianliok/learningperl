#!/usr/bin/perl

use strict;
use warnings;

my $max = 0;
foreach my $key (keys %ENV) {
  ($max > length($key)) || ($max = length($key));
}

foreach my $key (sort (keys %ENV)) {
  printf "%-${max}s - %s\n", $key, $ENV{$key};
}

exit 0;

