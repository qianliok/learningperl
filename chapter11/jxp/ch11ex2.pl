#!/usr/bin/perl
use warnings;
use strict;
use DateTime;
use feature "say";

if ( scalar @ARGV != 3 ){
  say "Please enter a year, month and day";
  exit 1;
}
my $year = $ARGV[0];
my $month = $ARGV[1];
my $day = $ARGV[2];

my $input_date = DateTime->new ( year => $year, month => $month, day => $day );

my $current_time = DateTime->from_epoch ( epoch => time );

my $dt = $current_time - $input_date;

my @units = $dt->in_units( qw(years months days) );

printf '%d years, %d months and %d days', @units;

