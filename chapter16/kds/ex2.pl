#!/usr/bin/perl

use warnings;
use strict;

open STDOUT, '>', 'ls.out' or die "Unable to write to ls.out";
open STDERR, '>', 'ls.err' or die "Unable to write to ls.err";
chdir $ENV{HOME} or die "Can't open $ENV{HOME}";
system 'ls -l';
