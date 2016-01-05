#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

if ( @ARGV == 2 ){
	my $old = shift @ARGV;
	my $new = shift @ARGV;
	say "Moving $old to $new";
	rename $old, $new;
}
