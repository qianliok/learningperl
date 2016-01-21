#!/usr/bin/perl
use warnings;
use strict;

printf( "%-20s %10s %10s\n", $_, (stat $_)[8,9]) for ( glob '*' );

