#!/urs/bin/perl

use strict;
use warnings;

my @argv = @ARGV;
my %skip;
while (<>) {
	if (/^## Copyright/i) {
		$skip{$ARGV} = 1;
	}		
}

foreach (@argv) {
	if (!defined $skip{$_}) {
		push (@ARGV, $_);
	}
}

if (@ARGV == 0) {
	exit 0;
}

$^I = ".bak";
while (<>) {
	s/(^#!.*)/$1\n## Copyright (c) 2015 Rafael Waldo Delgado Doblas\n## Distributed under the GNU GPLv3./;
	print;		
}
