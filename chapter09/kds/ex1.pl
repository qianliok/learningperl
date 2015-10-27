#!/usr/bin/perl
## Copyright (C) 2015 by kds

use warnings;
use strict;

my $line = "barneybarneybarneyfredfredfredkriskriskriskris";

print "Enter a string to match 3 consecutive times:\n";
chomp( my $what = <STDIN> );

print "'$1' was found 3 consecutive times\n" if( $line =~ /($what){3}/ );
