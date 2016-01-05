#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

foreach my $filename (@ARGV){
	if ( -e $filename ){
		if( -w -r -o $filename ){ 
			say $filename;
		}
	}
}
