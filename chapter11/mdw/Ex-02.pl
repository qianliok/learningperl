#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Std;
use vars qw( $opt_y $opt_m $opt_d );
use Scalar::Util qw( looks_like_number );
use DateTime;

getopt( 'ymd' );

unless ( looks_like_number($opt_y) && looks_like_number($opt_m) && looks_like_number ($opt_d) ){
	print "User has failed to enter 3 numbers\n";
	exit 1;
}
## was about to add validation beyond that but realised I don't have a chance.

my $setdate = DateTime->new(
      year       => $opt_y,
      month      => $opt_m,
      day        => $opt_d,
);

my $now = DateTime->now;

my $diff = $now->subtract_datetime($setdate);

print $diff->years." years ".$diff->months." months ".$diff->days." days\n";

