#!/usr/bin/perl


use strict;
use warnings;
use Module::CoreList qw( version );


print "Printing all modules in 5.014\n";
printf "%-40s || %-20s\n", "Module", "Version";

my %modules = %{ $Module::CoreList::version{5.014} };


printf "%-40s || %-20s\n", $_ , ($modules{$_} ? $modules{$_} : "undef") foreach (sort keys %modules);
