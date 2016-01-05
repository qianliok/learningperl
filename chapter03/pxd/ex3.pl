#!/usr/bin/perl

use strict;
use warnings;
use feature "say" ;


say "Enter a few line (Ctrl-D or Ctrl-Z if using Windows) to exit: ";
my @lines = <STDIN>;
my @sorted_lines = sort @lines;
say "Sorted text in separate lines \n  @sorted_lines ";

say "*" x 60 ;

say "Enter a few line (Ctrl-D or Ctrl-Z if using Windows) to exit: ";
chomp(@lines = <STDIN>);
@sorted_lines = sort @lines;
say "Sorted text in same line :: @sorted_lines ";


