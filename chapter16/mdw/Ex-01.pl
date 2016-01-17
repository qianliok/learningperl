#!/usr/bin/perl

use strict;
use warnings;

chdir '/' or die "cannot chdir to /: $!";

system 'ls -l';
