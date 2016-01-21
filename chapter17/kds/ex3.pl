#!/usr/bin/perl

use warnings;
use strict;
use autodie;

opendir ( my $dir, "." );
foreach my $file( readdir $dir ){
  my @date = map { convert_date( $_ ) } (stat $file)[8, 9];
  printf "%-20s %10s %10s\n", $file, @date;
}

sub convert_date {
  my ( $time ) = @_;
  my @convertedtime = ( localtime( $time ) )[5, 4, 3];
  $convertedtime[0] += 1900;
  $convertedtime[1] += 1;
  return sprintf( "%4d-%02d-%02d", $convertedtime[0], $convertedtime[1], $convertedtime[2] );
}

