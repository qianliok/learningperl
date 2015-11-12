#!/urs/bin/perl

use strict;
use warnings;
use Module::Corelist;

my %modules = %{ $Module::CoreList::version{5.014} };

print join("\n", sort keys %modules);
