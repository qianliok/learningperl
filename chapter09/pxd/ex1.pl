#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my $what = "fred|barney";

say "Enter a few lines";

while (<>) {
  chomp;
  if (/(?:$what){3}/) {
       say "Matched pattern $what in $_\n";
  }
  else {
       say "No match for pattern : $what found!";
  }
}


