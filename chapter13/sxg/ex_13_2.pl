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

print "Files:\n";
&print_files_from_current_dir();

print "\n......\n";

print "All files:\n";
&print_all_files_from_current_dir();


sub print_files_from_current_dir(){
	my @files = <*>;
	foreach (@files) {
		print "$_\n";
	}
}

sub print_all_files_from_current_dir(){
	my @files = <.* *>;
	foreach (@files) {
		print "$_\n";
	}
}
