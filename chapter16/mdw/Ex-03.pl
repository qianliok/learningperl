#!/usr/bin/perl

use strict;
use warnings;
use feature "say";

if ( `date` =~ /^S/ ) {
	say "go play";
} else {
	say "get to work";
}

