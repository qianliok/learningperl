#!/usr/bin/perl

use strict;

use warnings;



$^I = ".bak";



my $copyright = "## Copyright (C) 2015 by pxd\n";



while (<>) {

	print;

	if ( /^#!.+/i ) {

	    	print $copyright;

	}

}



