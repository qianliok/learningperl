#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


my $col_width = 20;
my %env = %ENV;

foreach my $key ( keys %env ) {

  $col_width = (length $key > $col_width) ? length $key : $col_width; 

}


printf ( "%-${col_width}s %s\n", 'Env Variable', 'Value' );
say "-" x $col_width . " | " . "-" x $col_width ;

foreach my $key ( sort keys %env ) {
  printf ( "%-${col_width}s %s\n", $key, $env{$key} );
}


