#!/usr/bin/perl

use strict;
use warnings;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

foreach my $module ( keys %modules ) {
	print $module."\n";
}
