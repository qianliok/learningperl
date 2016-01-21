#!/usr/bin/perl
use warnings;
use strict;

my $filename = "sample_text.txt";
open my $fh, "<", $filename or die "Can't open '$filename': $!";
chomp( my @strings = <$fh> );
while (1) {
	print("\nEnter a pattern: ");
	chomp( my $pattern = <STDIN> );
	last if ( $pattern eq "" );
	my @matches = eval { grep /$pattern/, @strings; };
	if ($@) {
		print "Error: $@";
	}
	else {
		print "Count: ", scalar @matches;
		print "\n\nList:\n", join( "\n", @matches );
	}
}
print "Bye!\n";
