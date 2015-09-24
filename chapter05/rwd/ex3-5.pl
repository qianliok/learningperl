#!/usr/bin/perl

use strict;
use warnings;
use Scalar::Util qw(looks_like_number);


print("Insert justification:\n");
chomp(my $just = <stdin>);

die "Error: Justification not numeric" if !looks_like_number($just);

print("Insert lines (ctrl+d to stop):\n");
chomp(my @lines = <stdin>);

print("1234567890" x (1 + $just / 10) . "\n");

foreach (@lines) {
	printf("%${just}s\n", $_);
}

exit 0;

