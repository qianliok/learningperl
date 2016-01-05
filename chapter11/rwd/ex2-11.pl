#!/urs/bin/perl

use strict;
use warnings;
use DateTime;

my $today = DateTime->today( );
my $out_date = $today->subtract_datetime( DateTime->new( year => $ARGV[0], month => $ARGV[1], day => $ARGV[2] ) );

print $out_date->years() . " years, " . $out_date->months() . " months, and " . $out_date->days() . " days\n";

exit 1;

