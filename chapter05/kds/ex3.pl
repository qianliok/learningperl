#!/usr/bin/perl

use warnings;
use strict;
use feature "say";
use Scalar::Util qw( looks_like_number );

say "Type some strings on seperate lines:";
my @strings = <STDIN>;

say "Choose the column width:";
chomp ( my $width = <STDIN> );
$width++;

die "column width needs to be a number" if !looks_like_number( $width );

say "1234567890" x ($width/10+1);
my $output = "%" . $width . "s";
printf $output x @strings, @strings;

