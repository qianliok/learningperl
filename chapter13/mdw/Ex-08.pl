#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

my @contents = sort glob '*';

foreach my $file (@contents) {
        my $link = readlink $file;
	$link ? say "$file -> $link" : 0;
}

