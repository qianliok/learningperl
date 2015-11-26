#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

if ( @ARGV == 2 ){
	my $old = shift @ARGV;
	my $new = shift @ARGV;
	say "Linking $old to $new";
	link $old, $new or die "Faild to link $old and $new $!";
}
