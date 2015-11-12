#!/usr/bin/perl
use warnings;
use strict;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

foreach my $module (sort (keys %modules)){
	print "$module =". $modules{module}. " \n";
}
