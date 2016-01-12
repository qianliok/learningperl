#!/usr/bin/perl
use warnings;
use strict;

if ( `date` =~ /\AS/ ) {
	print "go play!\n";
}
else {
	print "get to work!\n";
}
