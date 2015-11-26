#!/usr/bin/perl
use warnings;
use strict;

use File::Copy;

die "Wrong list of arguments!\n" unless @ARGV == 2;

my ( $source, $dest ) = @ARGV;

die "ERROR! $!" unless ( move( "$source", "$dest" ) );

print "Moved!";
