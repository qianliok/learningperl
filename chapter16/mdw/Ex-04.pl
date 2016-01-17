#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my %signals;

$SIG{$_} = 'my_handler' for keys %SIG;
$SIG{'INT'} = 'my_int_handler';

while ( 1 == 1) {
	sleep 10;
}

sub my_int_handler {
	die " INT was caught";
}

sub my_handler {
	my $signal = $_[0];
	$signals{signal} += 1;
	say "$signal was caught it has now been seen $signals{signal} times";
}	
