#!/usr/bin/perl

sub total {
	my $acu = 0;
	foreach (@_) {
		$acu += $_;
	}
	return $acu;
}

my @fred = ( 1..1000 );
my $fred_total = total(@fred);
print "The total of sum number from 1 to 1000 is $fred_total.\n";

exit 0
