#!/usr/bin/perl
use warnings;
use strict;

print "Enter directory structure: ";
chomp( my $dir = <STDIN> );
if ( $dir eq "" ) {
	chdir or die "Can't chdir to home:  $!";
}
else {
	chdir $dir or die "Can't chdir to '$dir': $!";
}

&print_file_from_current_dir();



sub print_file_from_current_dir(){
	my @files = <*>;
	foreach (@files) {
		print "$_\n";
	}
}
