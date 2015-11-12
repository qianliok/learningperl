#!/usr/bin/perl

use warnings;
use strict;
use Module::CoreList qw( version );

my %modules = %{ $Module::CoreList::version{ 5.014 } };
my $count = 0;

print ++$count . ". $_ \n" for ( sort keys %modules );

