#!/usr/bin/perl -w

use strict;
use feature "say";


my @files = glob ('*');

foreach my $file ( @files ) {
  my( $access_time, $mod_time ) = ( stat $file )[ 8, 9 ];
  printf( "%-20s%20d%20d\n", $file, $access_time, $mod_time );
}
