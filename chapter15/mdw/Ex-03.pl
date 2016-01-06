#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use Scalar::Util qw(looks_like_number);
use 5.010001;

foreach ( @ARGV ) {
	my $readable = "not ";
	my $writeable = "not ";
	my $executable = "not ";
	when ( -r ) { $readable = ""; continue }
	when ( -w ) { $writeable = ""; continue }
	when ( -x ) { $executable = ""; continue }
	default { say "$_ is ${readable}readable, ${writeable}writeable and ${executable}executable."}
}

