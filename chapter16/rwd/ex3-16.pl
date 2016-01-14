#!/usr/bin/perl

use strict;
use 5.010;

print `date` =~ /^S/? "Go play\n" : "Get to work\n";

