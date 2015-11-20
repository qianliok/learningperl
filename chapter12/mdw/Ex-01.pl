#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

foreach my $filename (@ARGV){
	if ( -e $filename ){
		my $readable = "not ";
		my $writeable = "not ";
		my $executable = "not ";
		if( -r $filename ){ 
			$readable = "";
		}
		if( -w $filename ){
                        $writeable = "";
                }
		if( -x $filename ){
                        $executable = "";
                }
		say "${filename} is ${readable}readable, ${writeable}writeable and ${executable}executable.";
	} else {
		say $filename." does not exist!"; 
	}
}
