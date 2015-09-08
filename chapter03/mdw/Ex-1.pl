#!/usr/bin/perl

use 5.010;
use warnings;

say "Enter Strings to be reversed:";

chomp(@strings=<>);

@result = reverse @strings;

foreach $result (@result) {
  say $result;
};
