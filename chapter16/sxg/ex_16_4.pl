#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my %count;

sub my_signal_handler {
	my ($signal) = @_;
	$count{$signal}++;
	if ( $signal eq "INT" ) {
		print Dumper( \%count );    # i like the see the content :)
		die "interrupted, exiting...\n";
	}
}

print "PID: $$\n";

foreach ( sort keys %SIG ) {
	$SIG{$_} = 'my_signal_handler';
}

while (1) { sleep 1 }
