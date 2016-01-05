#!/usr/bin/perl

use warnings;
use strict;

$ENV{"MAIL"} = undef;

my $max = 0;
while ( my $key = each %ENV ){
  $max = (length $key) if (length $key > $max);
}

print "Print environment variables \n";
foreach my $key ( sort keys %ENV ) {
    printf "%-${max}s\t%s\n", $key, $ENV{$key}//"undefined value";
}

