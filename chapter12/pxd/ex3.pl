#!/usr/bin/perl

use strict;
use warnings;
use feature "say";


if(scalar @ARGV == 0) {
	die "You need to provide at least one file as argument";
}

my @file_list = @ARGV;

sub check_file_permissions {
	my $file = shift;

	if ( -e $file ) {
		if ( -r -o -w _ ) {
			say "$file is owned by the current user";
		}
	}

}

foreach my $file (@file_list){
	check_file_permissions($file);
}




