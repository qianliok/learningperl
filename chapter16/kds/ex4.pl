#!/usr/bin/perl

use warnings;
use strict;

my %record;
$SIG{$_} = 'catcher' foreach keys %SIG;

while( 1 ) { print "...awaiting interrupt\n"; sleep 1; }

sub catcher {
  my ($sig) = @_;
  ++$record{$sig};
  die "interrupted\n" if( $sig eq 'INT' );
}
