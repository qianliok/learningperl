#!/usr/bin/perl
use warnings;
use strict;

my @files = <.* *>;
foreach (@files) {
	my $linkfile = readlink $_;
	if (defined $linkfile){
		print "$_ -> $linkfile\n" ; # Multiple use of $_
	}else{
		print "$_ \n"; # Multiple use of $_
	}
}
