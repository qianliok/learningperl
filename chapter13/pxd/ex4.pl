#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

foreach my $file (@ARGV) {
	unlink $file or warn "There was an error trying to delete $file : $!\n";
}

