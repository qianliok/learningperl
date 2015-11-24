#!/usr/bin/perl
use warnings;
use strict;

die "Wrong list of arguments!\n" unless ( @ARGV > 2 );

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;    # bad to shift the argv?

my ( $source, $dest ) = @ARGV;

if ($symlink) {
	symlink $source, $dest or die "Can't link '$source' to '$dest': $!\n";
}
else {
	link $source, $dest or die "Can't link '$source' to '$dest': $!\n";
}

print "Link crated!\n";

