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

	my %permissions = (
		'exists' => 0,
		'readable' => 0,
		'writable' => 0,
		'executable' => 0,
	);
	if ( -e $ file ) {
		$permissions{exists} = 1;
		if ( -r _ ) {
			$permissions{readable} = 1;
		}
		if ( -w _ ) {
			$permissions{writable} = 1;
		}
		if ( -x _ ) {
			$permissions{executable} =1;
		}
	}

	return %permissions;
}

foreach my $file (@file_list){
	my %permissions = check_file_permissions( $file );
	say "********** File: '$file' *************** ";

	if ($permissions{exists}) {
		say "$_ => $permissions{$_} " foreach (keys %permissions) ;
	} else {
		say "doesn't exist";
	}
}




