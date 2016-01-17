#!/usr/bin/perl

use strict;
use warnings;

open OUTPUT, '>', 'ls.out';

chdir '/' or die "cannot chdir to /: $!";

print OUTPUT `ls -l 2>/home/mdw/learningperl/chapter16/mdw/ls.err`;

close OUTPUT;
