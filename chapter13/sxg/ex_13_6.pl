#!/usr/bin/perl
use warnings;
use strict;

die "Wrong list of arguments!\n" unless @ARGV == 2;

my ( $source, $dest ) = @ARGV;
link $source, $dest or die "Can't link '$source' to '$dest': $!\n";

print "Hard link crated!\n";

