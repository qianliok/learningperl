#!/usr/bin/perl

use warnings;
use strict;
use feature "say";
use Getopt::Long;

my $symlink = "";
GetOptions ('s' => \$symlink);

if ( @ARGV == 2 ){
	my $old = shift @ARGV;
	my $new = shift @ARGV;
	say "Linking $old to $new";
	if ( $symlink ){
		symlink $old, $new or die "Failed to link $old and $new $!";
	} else {
		link $old, $new or die "Failed to link $old and $new $!";
	}
}
