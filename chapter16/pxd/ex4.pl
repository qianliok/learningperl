#!/usr/bin/perl -w

use strict;
use feature "say";
use 5.010;

say "Signal scanner in progress :: $$";

my %sig_hash;

foreach my $sig ( keys %SIG ) {
	$SIG{$sig} = 'signal_handler'; 
}

sub signal_handler {
	my $sig = shift;
	$sig_hash{$sig}++;
	foreach my $key (sort keys %sig_hash){
		say "Caught $key Count => $sig_hash{$key}";
	}
	if( $sig eq 'INT' ) { say "Caught Interrupt.. Exiting.. "; exit 1; }

}

while (1){
		sleep 1;
}
