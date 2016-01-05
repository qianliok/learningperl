#!/usr/bin/perl

use strict;
use warnings;

$^I= ".out";

while (<>) {
	s/Fred/\*/gi;
	s/Wilma/Fred/gi;
	s/\*/Wilma/gi;
	print;
}
