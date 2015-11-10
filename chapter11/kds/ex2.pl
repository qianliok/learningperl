#!/usr/bin/perl

use warnings;
use strict;
use DateTime;
use Scalar::Util qw( looks_like_number );

die "Format: yyyy mm dd" if( scalar @ARGV < 3);

my $todayObj = DateTime->today();
my $otherObj = DateTime->new( year => $ARGV[0], month => $ARGV[1], day => $ARGV[2] );

my $result = $otherObj - $todayObj;
my @difference = $result->in_units( qw( years months days ) );

printf "%d year(s), %d month(s), %d day(s)\n", @difference;
