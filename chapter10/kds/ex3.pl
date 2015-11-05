#!/usr/bin/perl

use warnings;
use strict;

print "Printing ENV hash:\n";

$ENV{"http_proxy"} = undef;
$ENV{"MAIL"} = undef;

printf "%-" . column_size() . "s => %s\n", $_, ( $ENV{$_} // "(undefined value)" ) foreach ( sort keys %ENV );

sub column_size{
  my $top_width = 0;
  foreach ( keys %ENV ){
    $top_width = length $_ if( length $_ > $top_width );
  }
  return $top_width;
}
