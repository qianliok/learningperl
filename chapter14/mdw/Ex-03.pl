#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my $string = shift;
my $sub = shift;
my $count = 0;

until ( index($string, $sub, $count) == -1 ){
	say index($string, $sub, $count);
	$count = index($string, $sub, $count) + 1;
}

