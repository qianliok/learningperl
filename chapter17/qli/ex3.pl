#!/usr/bin/perl
use warnings;
use strict;
use POSIX qw(strftime);

for my $ff ( glob '*' ) {
  printf "%-20s %10s %10s\n", $ff, map { todate( $_ ) } ( stat $ff )[ 8, 9 ];
}

sub todate {
  my ( $epoch ) = @_;

  return strftime( '%Y-%m-%d', localtime( $epoch ) );
}

