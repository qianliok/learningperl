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
  my @converted_date = map { convert_date( $_ ) } (stat $file)[8,9];
  printf $format_string, $file, @converted_date;
}

sub convert_date {
 ( my $time ) = @_;
  my $format_string = "%04d-%02d-%02d";
  my ( $year, $month, $day ) = (localtime ( $time ))[5,4,3];
  $year = $year + 1900;
  $month = $month + 1;
  return sprintf $format_string, $year, $month, $day;
 }