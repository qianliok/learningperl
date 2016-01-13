#!/usr/bin/perl

use warnings;
use strict;

chdir $ENV{HOME} or die "Can't open $ENV{HOME}";
system 'ls -l';
