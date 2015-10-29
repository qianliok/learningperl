#!perl
use warnings;
use strict;

$^I = ".out";

while (<>) {
    s/Fred/Larry/gi;
    print;
}
