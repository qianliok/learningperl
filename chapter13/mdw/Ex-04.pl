#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

foreach my $arg (@ARGV){
	say "Removing $arg";
	unlink $arg;
}
