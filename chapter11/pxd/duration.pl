#!/usr/bin/perl

use strict;
use warnings;
use feature "say";
use DateTime;
use Scalar::Util qw(looks_like_number);


#Lets give the user some play time
sub is_valid_number {
	my @input = shift;
	foreach my $num (@input) {
		if(!looks_like_number($num)) {
				return 0;
		}
	}
	return 1;
}


if ( scalar @ARGV < 3 || !is_valid_number(@ARGV)) {
  say "Incorrect arguments!! The correct usage is :: $0 YYYY MM DD";
  exit 1;
}


my $dt_today = DateTime->today();

my $dt_user = DateTime->new(
	year => $ARGV[0],
	month => $ARGV[1],
	day => $ARGV[2]
);


my $duration = $dt_today - $dt_user;

say( printf( 'years %d, months %d, days %d', $duration->in_units( qw( years months days ) ) ) );
