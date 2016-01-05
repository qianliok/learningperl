#!/usr/bin/perl
use warnings;
use strict;
use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.014} };

while (my ($k, $v) = each %modules ) {
  print "$k $v \n";
}

