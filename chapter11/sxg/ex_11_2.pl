#!/usr/bin/perl
use warnings;
use strict;

use DateTime;

if ( @ARGV == 1 ){
	my $now = DateTime−>from_epoch( epoch => time );
	
    
	my $time = DateTime->new(year => $ARGV[0], month => $ARGV[1],day > $ARGV[2]);
	        
	my $duration = $now - $time;
	
	my @units = $duration->in_units( qw(years months days) );
	    
	print "$units[0] years, $units[1] months, and $units[2] days\n";
}

