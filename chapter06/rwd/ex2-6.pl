#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %words;

print "Type words, one per line (CTRL-D to stop):\n";
while (<STDIN>) {
	chomp;
	$words{$_}++;
}

print Data::Dumper->Dump([\%words], [qw(Sumary)]);

exit 0;

