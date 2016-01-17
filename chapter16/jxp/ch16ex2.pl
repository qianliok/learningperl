#!/usr/bin/perl
use strict;
use warnings;

system "cd ~ 2> ls.err;ls -l > ls.out 2>> ls.err";
