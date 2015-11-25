#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

say "What director do you want to change to and print the contents of?";

chomp (my $dirname = <>);

if ($dirname ne ""){
	chdir $dirname or die "Failed to change directory to $dirname";
} else {
	chdir or die "Failed to change to home directory";
}
my @contents = sort glob '*';

foreach my $file (@contents) {
	say $file;
}
