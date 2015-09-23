#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);

my $col_width ;
say "Enter the column width " ;
while (!defined $col_width || !looks_like_number($col_width)) {
  chomp( $col_width = <STDIN> );
}


say "Enter the strings to be formatted (Ctrl-D to exit)";
chomp( my @strings = <STDIN> );


say  "1234567890" x ( $col_width / 10 + 3);

printf ("%${col_width}s\n", $_) foreach ( @strings );

