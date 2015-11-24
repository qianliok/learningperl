#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
use File::Basename;

my $opt_s = 0;

if ( $ARGV[0] eq "-s" ) {
    $opt_s = 1;
    shift @ARGV;
}

if( scalar @ARGV != 2 ){
  say "Needs 2 arguments for linking a file - source and destinationi, use optional -s to create a symbolic link ";
  exit 0;
}

my ($src, $dest ) = @ARGV;

if( -d $dest ) {
	$dest .= "/" . ( basename $src );
}

if($opt_s) {
	symlink $src, $dest or die "There was a problem with linking $src to $dest: $!";
}
else {
	link $src, $dest or die "There was a problem with linking $src to $dest: $!";
}

say "Link created from $src to $dest";

