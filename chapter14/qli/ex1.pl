#!/usr/bin/perl
use warnings;
use strict;

my @numbers = qw( 17 1000 04 1.50 3.14159 –10 1.5 4 2001 90210 666 );

@numbers = @ARGV if ( @ARGV );

printf ("%20s\n", $_) foreach ( sort {$a <=> $b} @numbers );
# has warnings during sorting
# Argument "M-bM-\0M-^S10" isn't numeric in sort at ./ex1.pl line 9.
