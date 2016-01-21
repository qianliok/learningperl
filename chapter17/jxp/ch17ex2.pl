#!/usr/bin/perl

use strict;
use warnings;
use List::Util qw( max );

opendir (my $dir_fh, ".") or die "Cannot open current directory";

my @files = readdir $dir_fh;

my @name_length = map {length($_)} @files;

my $max_length = max( @name_length );

my $format_string = "%-${max_length}s\t%s\t%s\n";

foreach my $file ( @files ){
  printf $format_string, $file, (stat $file)[8,9];
}
