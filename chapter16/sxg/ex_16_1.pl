#!/usr/bin/perl
use warnings;
use strict;

chdir '/' or die "Problem in chdir : $!";
exec 'ls', '-l' or die "Problem in listing: $!";

