#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use File::Basename;

if( scalar @ARGV != 2 ){
  say "Needs 2 arguments for linking a file - source and destination ";
  exit 0;
}

my ($src, $dest ) = @ARGV;

if( -d $dest ) {
	$dest .= "/" . ( basename $src );
}

link $src, $dest or die "There was a problem with linking $src to $dest: $!";

say "Hard link created fro $src to $dest";

