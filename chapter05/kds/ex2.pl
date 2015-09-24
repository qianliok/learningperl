#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

say "Type some strings on seperate lines:";

my @strings = <STDIN>;

say "12345678901234567890123456789012345678901234567890";
printf "%21s" x @strings, @strings;


