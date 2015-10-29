#!perl
## Copyright (C) 2015 by me
use warnings;
use strict;

$^I = ".out";

my $marker = "øøøø";

while (<>) {
	if(/$marker/){
		print "Problem!!! $_\n";
	}else{
		s/Fred/$marker/gi;
		s/Wilma/Fred/gi;
		s/$marker/Wilma/gi;
	}
    
    print; #print the problem line too.
}
