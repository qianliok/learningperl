#!/usr/bin/perl
use warnings;
use strict;

foreach (@ARGV) {
	unlink $_ or warn "Can't remove '$_': $!\n";
}
