#!/usr/bin/perl

use warnings;
use strict;
use feature "say";

my %word_counts = (); 

say "Enter words on seperate lines:";
my @words = <STDIN>;
chomp ( @words );

$word_counts{ $_ }++ foreach ( @words );

say "--------Counts--------";
say "$_ -> $word_counts{ $_ }" foreach ( sort keys %word_counts );

