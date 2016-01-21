#!/usr/bin/perl -w

use strict;
use feature "say";
use Getopt::Std;

my %args;
getopts('df:', \%args);

my $debug = 0;
if (defined $args{d}) {
	$debug = 1;
	say "Running in debug mode";
}

if( !defined $args{f} ) {
	say "ex1.pl [-d] -f <file>";
	exit(0);	
}

say "Starting to read strings from $args{f}" if $debug;

my @strings = ();
open my $input_fh, '<', $args{f} or die "Unable to open file $args{f}: $!\n";
while( my $line = <$input_fh> ) {
	chomp( $line );
	push( @strings, $line );
}
close $input_fh;

say "Finished. Read " . scalar @strings . " in total." if defined $debug;

# User string pattern matching
while(1) {
	say "Please enter a pattern for searching (Type quit to exit) : ";
	chomp( my $input_str = <STDIN> );

	if ( $input_str =~ /quit/i || !length( $input_str )  ) {
		say "User is quitting.." if $debug;
		last;
	}
	
	my $result = eval {grep /$input_str/, @strings };
	if ( $@ ) {
		say "Cound not find pattern...: $@";
		next;
	}	
	
	my @matches = grep /$input_str/, @strings;
	say "Found " . scalar @matches . " matches for $input_str";
	say join( ", \n", @matches );
}

