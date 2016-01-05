#!/usr/bin/perl

use warnings;
use strict;
use File::Basename;

die "...need source and destination" if( scalar @ARGV < 2 );

my $source = $ARGV[0];
my $des = $ARGV[1];

$des .= "/" . basename $source if( -d $des );

rename $source, $des or die "cant do dat";
