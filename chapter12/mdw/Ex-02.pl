#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

my $oldest_file;
my $oldest_age;

foreach my $filename (@ARGV){
	if ( -e $filename ){
		if ( -A $filename > $oldest_age ){
			$oldest_age = -A $filename;
			$oldest_file = $filename;
		}
	}
}

if ( $oldest_file ){
	say "The oldest file was $oldest_file at a ripe old age of $oldest_age days";
} else {
	say "No valid files were entered";
}
