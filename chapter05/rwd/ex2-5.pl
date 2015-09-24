#!/usr/bin/perl

use strict;
use warnings;

print("Insert lines (ctrl+d to stop):\n");
chomp(my @lines = <stdin>);

print(("1234567890" x 4) . "\n");

foreach (@lines) {
	printf("%20s\n", $_);
}

exit 0;

