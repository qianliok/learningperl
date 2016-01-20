#!/usr/bin/perl -w

use strict;
use feature "say";


my @files = glob '*';
my @headers = ( "year", "month", "day" );

foreach my $file ( @files ) {
	my @file_epoch_times = ( stat( $file ) )[ 8, 9 ];
	my @formatted_time = map { format_time( $_ ) } @file_epoch_times;
	printf( "%-20s%20s%20s\n", $file, @formatted_time );
}

sub format_time {
	my ( $epoch_time ) = @_;
	my %formatted_date;
	@formatted_date{@headers} = ( localtime $epoch_time )[5, 4, 3];

	# Had to add 1900 to display correct year
	$formatted_date{year} += 1900;

	#Had to increment by 1 as the month starts with '0'
	$formatted_date{month}++;

	return sprintf( "%4d-%02d-%02d", @formatted_date{ @headers } );
}
