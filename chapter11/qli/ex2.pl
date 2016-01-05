#!/usr/bin/perl
use warnings;
use strict;
use DateTime;

if ( @ARGV != 3 ){
  print "\nUsage: ex2.pl yyyy m d \n";
  exit;
}

my ( $year, $month, $day ) = @ARGV; 
my $user_dt = DateTime->new( year=>$year, month=>$month, day=>$day );

my $duration = $user_dt - DateTime->now;
my @units = $duration->in_units( qw(years months days) );
printf "%d years, %d months, and %d days \n", @units;

