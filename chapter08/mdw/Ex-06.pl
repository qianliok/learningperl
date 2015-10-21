#!/usr/bin/perl

use strict;
use warnings;

while (<>) { 
	chomp;
	print $_ . "!" if /\p{Space}\z/;
}
