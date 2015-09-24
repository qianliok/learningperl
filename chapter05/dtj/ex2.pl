#!/usr/bin/perl

use warnings;
use strict;

chomp( my @words = <STDIN> );

print "1234567890" x 6, "\n";

printf ("%20s\n", $_) foreach ( @words );