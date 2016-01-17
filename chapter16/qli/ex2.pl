#!/usr/bin/perl
use warnings;
use strict;

exec 'ls -l / > ls.out 2> ls.err';

