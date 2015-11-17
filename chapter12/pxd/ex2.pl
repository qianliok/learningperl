#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


if(scalar @ARGV == 0) {
	die "You need to provide at least one file as argument";
}

my @file_list = @ARGV;


my $oldest_file;
my $oldest_file_age = 0;


foreach my $file (@ARGV) {
	my $age = -C $file;

	if ( !-e $file ) {
	    next;
	}
	elsif ($age > $oldest_file_age) {
		$oldest_file = $file;
		$oldest_file_age = $age;
	}
}

if (defined $oldest_file) {
	say "$oldest_file is $oldest_file_age days old";
}
else {
	say "None of the input files exist.";
}






