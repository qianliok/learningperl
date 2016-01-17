#!/usr/bin/perl

use strict;
use 5.010;

open (STDOUT, '>', 'ls.out');
open (STDERR, '>', 'ls.err');

exec 'cd /; ls -l';

