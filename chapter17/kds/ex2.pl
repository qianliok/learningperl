#!/usr/bin/perl

use warnings;
use strict;
use autodie;
use Try::Tiny;

opendir ( my $dir, "." );
print "$_ \t " . (stat $_)[8] . "\t" . (stat $_)[9] . "\n" foreach ( readdir $dir );
